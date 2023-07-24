FROM rocker/verse:latest

LABEL maintainer='Tarcísio Giroldo'

RUN R -e "install.packages(c('rlang', 'glue', 'xfun', 'yaml', 'fontawesome', 'knitr', 'readr', 'dplyr', 'magrittr', 'tibble', 'here', 'readr' ), repos =  'https://cloud.r-project.org/' )" && \
 R -e "remotes::install_github('mitchelloharawild/vitae', upgrade = 'always', dependencies = TRUE, repos = 'https://cloud.r-project.org/')" && \
 apt-get autoremove -y && \
 apt-get clean

ENV USER rstudio