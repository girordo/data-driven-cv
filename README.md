# Data-Driven CV Automated with Python, LaTeX (ModernCV) and Github Actions

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT) [![CI for CV](https://github.com/girordo/data-driven-cv/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/girordo/data-driven-cv/actions/workflows/ci.yml)

This repository contains the code and data to create an impressive data-driven CV (Curriculum Vitae) and Cover Letters using Python, Jinja2, LaTeX (ModernCV & KOMA-Script scrlttr2), unified YAML data, and automated with GitHub Actions.

## Table of Contents

- [Introduction](#introduction)
- [How to Use](#how-to-use)
- [License](#license)
- [Contributing](#contributing)

## Introduction

Welcome to the Data-Driven CV project! This project automates the creation of professional, eye-catching CVs and cover letters using Python and LaTeX (`moderncv` style `classic`), maintaining 100% visual fidelity while eliminating data duplication.

### Key Highlights:

- **Single Source of Truth**: All experiences, education, skills, and languages for both English and Portuguese are stored centrally in `data/cv_data.yaml`.
- **Fast Python Pipeline**: A Python script (`build.py`) with Jinja2 handles templating and LaTeX compilation with `xelatex`.
- **Automated CI/CD**: GitHub Actions compiles and commits the PDFs automatically on every push.

## How to Use

### Local Usage:

1. Clone this repository:

```bash
git clone https://github.com/your-username/data-driven-cv.git
cd data-driven-cv
```

2. Install Python dependencies:

```bash
pip install -r requirements.txt
```

3. Update your information in `data/cv_data.yaml` and `data/letters.yaml`.

4. Generate all resumes and cover letters:

```bash
python build.py
```

The compiled PDFs will be saved in `resumes/` and `cover-letter/`.

### Automated with GitHub Actions:

1. Commit and push your changes in `data/cv_data.yaml` or `data/letters.yaml`.
2. GitHub Actions will trigger, render the PDFs using Python and LaTeX, and automatically commit the updated files to `resumes/` and `cover-letter/`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! If you find any issues or want to suggest improvements, please open an issue or submit a pull request. For major changes, please discuss them in an issue first.

Let's make this project even more amazing together!

---

Feel free to customize this README further to suit your project's specific needs. Enjoy automating your data-driven CV with GitHub Actions and Docker! If you have any questions or need further assistance, don't hesitate to reach out. Happy coding!

## Inspirational

I just followed an tutorial

https://www.youtube.com/watch?v=cMlRAiQUdD8

I also wrote an article in PT-BR

https://dev.to/girordo/como-automatizar-seu-curriculo-utilizando-rmarkdown-e-github-actions-dko

---

<div align="center">
  <sub>Made with 💜 by <a href="https://github.com/girordo">Tarcísio Giroldo</a></sub>
</div>
