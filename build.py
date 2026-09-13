#!/usr/bin/env python3
"""
Data-Driven CV & Cover Letter Generator (Python version)
Compiles YAML data into professional LaTeX PDFs using ModernCV and scrlttr2.
"""

import argparse
import datetime
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path
import yaml
import jinja2

ROOT_DIR = Path(__file__).resolve().parent
DATA_DIR = ROOT_DIR / "data"
TEMPLATES_DIR = ROOT_DIR / "templates"
RESUMES_DIR = ROOT_DIR / "resumes"
LETTERS_DIR = ROOT_DIR / "cover-letter"

extra_paths = [
    str(Path.home() / ".local" / "bin"),
    str(Path.home() / ".TinyTeX" / "bin" / "x86_64-linux"),
]
for p in extra_paths:
    if p not in os.environ.get("PATH", "") and os.path.isdir(p):
        os.environ["PATH"] = f"{p}:{os.environ.get('PATH', '')}"


def escape_latex(val):
    """Escapes special LaTeX characters in strings."""
    if not isinstance(val, str):
        return "" if val is None else val
    replacements = [
        ("&", r"\&"),
        ("%", r"\%"),
        ("$", r"\$"),
        ("#", r"\#"),
        ("_", r"\_"),
    ]
    for char, repl in replacements:
        val = val.replace(char, repl)
    return val


def get_jinja_env():
    """Initializes a Jinja2 environment configured for LaTeX templates."""
    env = jinja2.Environment(
        block_start_string=r"\BLOCK{",
        block_end_string=r"}",
        variable_start_string=r"\VAR{",
        variable_end_string=r"}",
        comment_start_string=r"\#{",
        comment_end_string=r"}",
        line_statement_prefix="%%",
        line_comment_prefix="%#",
        trim_blocks=True,
        lstrip_blocks=True,
        autoescape=False,
        loader=jinja2.FileSystemLoader(str(TEMPLATES_DIR)),
    )
    env.filters["latex_escape"] = escape_latex
    return env


def compile_latex(tex_path: Path, output_pdf: Path, keep_tex: bool = False):
    """Compiles a .tex file to PDF using xelatex."""
    output_pdf.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="cv_build_") as tmpdir:
        tmp_path = Path(tmpdir)
        tmp_tex = tmp_path / tex_path.name
        shutil.copy(tex_path, tmp_tex)

        cmd = [
            "xelatex",
            "-interaction=nonstopmode",
            f"-output-directory={tmp_dir_str}",
            str(tmp_tex),
        ] if (tmp_dir_str := str(tmp_path)) else []

        try:
            result = subprocess.run(
                cmd,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
                check=False,
            )
            if result.returncode != 0:
                print(f"Error compiling {tex_path.name}:", file=sys.stderr)
                print(result.stdout[-1500:], file=sys.stderr)
                return False

            subprocess.run(
                cmd,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                check=False,
            )

            generated_pdf = tmp_path / f"{tex_path.stem}.pdf"
            if generated_pdf.exists():
                shutil.copy(generated_pdf, output_pdf)
                print(f"  -> Generated: {output_pdf.relative_to(ROOT_DIR)}")
                return True
            else:
                print(f"Error: {generated_pdf} was not generated.", file=sys.stderr)
                return False

        except FileNotFoundError:
            print("Error: 'xelatex' not found in PATH. Please install TeX Live or TinyTeX.", file=sys.stderr)
            return False


def build_resume(cv_data: dict, lang: str, compact: bool, output_pdf: Path, env: jinja2.Environment, keep_tex: bool = False):
    """Renders and compiles a resume variant."""
    print(f"Building Resume: lang={lang}, compact={compact}...")

    labels = {
        "en": {
            "employment": "Employment",
            "education": "Education",
            "languages": "Languages",
            "skills": "Skills",
        },
        "pt": {
            "employment": "Experiência",
            "education": "Educação",
            "languages": "Idiomas",
            "skills": "Competências",
        },
    }[lang]

    p = cv_data["personal"]
    personal = {
        "name": escape_latex(p["name"]),
        "surname": escape_latex(p["surname"]),
        "position": escape_latex(p["position"][lang]),
        "email": p["email"],
        "www": p["www"],
        "github": p["github"],
        "linkedin": p["linkedin"],
        "headcolor": p.get("headcolor", "CC5500"),
        "aboutme": escape_latex(p.get("aboutme", {}).get(lang, "")),
    }

    experiences = []
    for exp in cv_data.get("experience", []):
        if compact and not exp.get("compact", True):
            continue
        start_m = exp["start_month"][lang]
        start_y = exp["start_year"]
        end_m = exp["end_month"][lang]
        end_y = exp["end_year"]
        when_str = f"{start_m} {start_y} -- {end_m}" + (f" {end_y}" if end_y else "")

        details = [escape_latex(d) for d in exp["details"].get(lang, [])]
        experiences.append({
            "when": escape_latex(when_str),
            "what": escape_latex(exp["company"]),
            "with": escape_latex(exp["title"][lang]),
            "where": escape_latex(exp["location"][lang]),
            "details": details,
        })

    educations = []
    for edu in cv_data.get("education", []):
        when_str = f"{edu['start_year']} -- {edu['end_year']}"
        details = []
        for d in edu["details"].get(lang, []):
            if isinstance(d, dict):
                if compact and not d.get("compact", True):
                    continue
                details.append(escape_latex(d["text"]))
            else:
                details.append(escape_latex(d))

        educations.append({
            "when": escape_latex(when_str),
            "what": escape_latex(edu["degree"][lang]),
            "with": escape_latex(edu["institution"]),
            "where": escape_latex(edu["location"][lang]),
            "details": details,
        })

    languages = []
    for l in cv_data.get("languages", []):
        languages.append({
            "name": escape_latex(l["name"][lang]),
            "level": escape_latex(l["level"][lang]),
            "code": escape_latex(l.get("code") or ""),
        })

    skills = []
    for s in cv_data.get("skills", []):
        details = [escape_latex(d) for d in s["details"].get(lang, [])]
        skills.append({
            "name": escape_latex(s["skill"]),
            "area": escape_latex(s["area"][lang]) if s.get("area") and s["area"].get(lang) else "",
            "details": details,
        })

    template = env.get_template("moderncv.tex.jinja")
    rendered_tex = template.render(
        personal=personal,
        labels=labels,
        compact=compact,
        experiences=experiences,
        educations=educations,
        languages=languages,
        skills=skills,
    )

    tex_filename = ROOT_DIR / f"{output_pdf.stem}.tex"
    tex_filename.write_text(rendered_tex, encoding="utf-8")

    success = compile_latex(tex_filename, output_pdf, keep_tex=keep_tex)
    if not keep_tex and tex_filename.exists():
        tex_filename.unlink()
    return success


def build_letters(letters_data: dict, env: jinja2.Environment, keep_tex: bool = False):
    """Renders and compiles all cover letters."""
    template = env.get_template("letter.tex.jinja")
    all_success = True

    months_en = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    months_pt = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"]
    today = datetime.date.today()

    for key, item in letters_data.get("letters", {}).items():
        lang = item.get("lang", "en")
        print(f"Building Cover Letter: {key} (lang={lang})...")

        if lang == "pt":
            date_str = f"{today.day} de {months_pt[today.month - 1]} de {today.year}"
        else:
            date_str = f"{months_en[today.month - 1]} {today.day}, {today.year}"

        letter_ctx = {
            "author": escape_latex(item["author"]),
            "date": date_str,
            "subject": escape_latex(item["subject"]),
            "opening": escape_latex(item["opening"]),
            "closing": escape_latex(item["closing"]),
            "signature": escape_latex(item["signature"]),
            "content": item["content"].strip(),
        }

        rendered_tex = template.render(letter=letter_ctx)
        out_name = item.get("output_filename", f"{key}.pdf")
        output_pdf = LETTERS_DIR / out_name

        tex_filename = ROOT_DIR / f"{key}.tex"
        tex_filename.write_text(rendered_tex, encoding="utf-8")

        ok = compile_latex(tex_filename, output_pdf, keep_tex=keep_tex)
        if not keep_tex and tex_filename.exists():
            tex_filename.unlink()
        if not ok:
            all_success = False

    return all_success


def main():
    parser = argparse.ArgumentParser(description="Build Data-Driven CVs and Cover Letters via Python.")
    parser.add_argument("--all", action="store_true", default=True, help="Build all CVs and cover letters")
    parser.add_argument("--cv", action="store_true", help="Build only CVs")
    parser.add_argument("--letters", action="store_true", help="Build only cover letters")
    parser.add_argument("--keep-tex", action="store_true", help="Keep intermediate .tex files")
    args = parser.parse_args()

    env = get_jinja_env()

    with open(DATA_DIR / "cv_data.yaml", encoding="utf-8") as f:
        cv_data = yaml.safe_load(f)

    with open(DATA_DIR / "letters.yaml", encoding="utf-8") as f:
        letters_data = yaml.safe_load(f)

    build_all = not (args.cv or args.letters)

    # Output mappings
    cv_targets = [
        ("en", False, RESUMES_DIR / "Tarcisio-Resume-All.pdf"),
        ("en", True, RESUMES_DIR / "Tarcisio-Resume.pdf"),
        ("pt", False, RESUMES_DIR / "Tarcisio-CV-All.pdf"),
        ("pt", True, RESUMES_DIR / "Tarcisio-CV.pdf"),
    ]

    success = True
    if build_all or args.cv:
        print("=== Compiling Resumes ===")
        for lang, compact, out_path in cv_targets:
            ok = build_resume(cv_data, lang, compact, out_path, env, keep_tex=args.keep_tex)
            if not ok:
                success = False

    if build_all or args.letters:
        print("\n=== Compiling Cover Letters ===")
        ok = build_letters(letters_data, env, keep_tex=args.keep_tex)
        if not ok:
            success = False

    if success:
        print("\nAll documents generated successfully! 🎉")
    else:
        print("\nBuild completed with errors.", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
