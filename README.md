# Data-Driven CV Automated with R and R Markdown

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This repository contains the code and data to create an impressive data-driven CV (Curriculum Vitae) using R, R Markdown, vitae, LaTeX, YAML, and automated with GitHub Actions and Docker.

## Table of Contents

- [Introduction](#introduction)
- [How to Use](#how-to-use)
- [License](#license)
- [Contributing](#contributing)

## Introduction

Welcome to the Data-Driven CV project! This repository aims to automate the creation of an eye-catching CV using R and R Markdown, with the help of the `vitae` package for R. The project leverages the power of LaTeX to produce professional-looking PDF output. Additionally, it utilizes GitHub Actions and Docker to simplify the CV generation process.

## How to Use

To generate your data-driven CV using GitHub Actions and Docker, follow these steps:

1. Fork this repository to your GitHub account.

2. Clone the forked repository to your local machine.

```bash
git clone https://github.com/your-username/data-driven-cv.git
cd data-driven-cv
```

3. Update the `data/data.r` file with your CV information. The `data/data.r` file will be used as the data source for creating your CV.

4. Customize the `resumes/data-driven-resume.Rmd` file according to your preferences and design choices. This file is where you can modify the content and layout of your CV.

5. Commit and push the changes to your GitHub repository.

6. GitHub Actions will automatically trigger when you push changes to the `main` branch. The defined workflow will run the Docker container, which generates the PDF CV using the R script and R Markdown. The resulting PDF will be saved in the `resumes` folder.

7. Once the GitHub Actions workflow completes successfully, navigate to the "Actions" tab in your repository on GitHub. There, you can find the workflow run and download the generated PDF CV from the artifacts section.

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

---

<div align="center">
  <sub>Made with 💜 by <a href="https://github.com/girordo">Tarcísio Giroldo</a></sub>
</div>
