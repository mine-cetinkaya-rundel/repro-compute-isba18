# Reproducible Computing

Short-course at [ISBA 2018](https://bayesian.org/isba2018/Short-Courses/)  
2018-06-24  
9am - 5pm

## Abstract

Success in statistics and data science is dependent on the development of both analytical and computational skills. This workshop will cover:

- Recognizing the problems that reproducible research helps address.
- Identifying pain points in getting your analysis to be reproducible.
- The role of documentation, sharing, version control, automation, and organization in making your research more reproducible.
- Introducing tools to solve these problems, specifically R, RStudio, RMarkdown, git, GitHub, and make.
- Computational reproducibility specific to Bayesian methodologies.

Workshop attendees will work through several exercises and get first-hand experience with using relevant tool-chains and techniques, including R/RStudio, literate programming with R Markdown, automation with make, and collaboration and version control with git/GitHub.

## Schedule

| Time          | Activity                                |
|:--------------|:----------------------------------------|
| 09:00 - 09:20 | [Welcome](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/00-welcome/00-welcome.html)       |  
| 09:20 - 10:30 | [Literate programming](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/01-lit-program/01-lit-program.html)  |
| 10:00 - 10:30 | [Naming](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/02-naming/02-naming.html)          |
| 10:10 - 11:00 | *Coffee break*                          |
| 11:00 - 11:30 | [Organization](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/03-organization/03-organization.html)        |
| 11:00 - 12:30 | [Version control with Git and GitHub]() |
| 12:30 - 14:00 | *Lunch break*                           |
| 14:00 - 14:45 | [Scaling reproducible projects](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/05-scaling/05-scaling.html)                         |
| 14:40 - 15:30 | [Introduction to make](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/06-make/06-make.html)                                   |
| 15:30 - 16:00 | *Coffee break*                          |
| 16:00 - 17:00 | make in action                          |

### Literate programming and organization (9:00 - 10:30)

- Recognize the problems that reproducible research helps address and identify 
pain points in getting your analysis to be reproducible.
- The role of documentation, sharing, automation, and organization in making 
your research more reproducible.
- Literate programming with R Markdown
  - Introduce the data: Gapminder
  - Hands on activity: Updating an analysis when the source data changes
- Project organization
  - File and folder organization for projects
  - Naming conventions

### Version control with Git and GitHub (11:00 - 12:30)

- What is Git and version control?
- Git in GitHub
  - Define git vocabulary (commit, fork, pull request, repository, commit 
  message).
  - Demonstrate ability to navigate through a Github repository main page.
  - Define the difference between a directory and a repository.
  - Create a repository on GitHub.
  - Demonstrate ability to commit changes to text files with a commit message.
  - Evaluate repository History.
  - Create a pull request to someone else's repository.
- Git in RStudio
  - Define git vocabulary (push, fork, local repository, remote repository)
  - Fork remote repository from Github into RStudio.
  - Navigate through the basics of using git in RStudio.
  - Push local repository from RStudio to Github.
  - Demonstrate the ability to host code from RStudio to Github.

### Scaling reproducible projects + Make (14:00 - 15:30)

- Practical example - Scottish lip cancer
  - Reproducible R Markdown document with "full Bayesian analysis" including data munging, EDA, model fitting and analysis.
- Caching as a solution to scaling
  - Build your own cache: Saving your own results with `save()` vs. `saveRDS()`
  - R Markdown caching: `cache = TRUE`
- Using make to automate and scale
  - Introduce make
  - Review make syntax
  - Introduce hands on exercise - adapt 

### Hands on exercise + Q&A (16:00 - 17:00)

- Finish up hands-on exercise + Live demo
- Local installation
- Q&A

## Computing requirements

- R - 3.5.0
- [RStudio](https://www.rstudio.com/products/rstudio/download/preview/) - 1.2.707 or higher
- git
  - OSX - install Git for Mac by downloading and running the installer or install homebrew and use it to install git via brew install git.
  - Unix / Linux - you should be able to install git via your prefered package manager (e.g. apt, dnf, yum).
  - Windows - install [Git for Windows](https://gitforwindows.org/). This will provide you with git, the bash shell, and ssh in windows.
- System libraries and packages (including development headers):
  - jags
  - geos
  - gdal
  - proj
  - texlive
  - udunits2
- R packages:
  - From CRAN:
    - tidyverse
    - rmarkdown
    - shiny
    - rjags
    - rstan
    - sf
  - From github:
    - tidybayes: https://github.com/mjskay/tidybayes
    - ggplot2: https://github.com/tidyverse/ggplot2

## Instructors

**[Mine Çetinkaya-Rundel](http://www2.stat.duke.edu/~mc301/)** - Duke University + RStudio

Mine is an Associate Professor of the Practice of Statistical Science at Duke 
University and a Professional Educator at RStudio. Her work focuses on 
innovation in statistics and data science pedagogy, with an emphasis on computation, reproducible research, open-source education, and student-centered 
learning. She is the author of three open-source introductory statistics 
textbooks as part of the OpenIntro project and teaches the popular Statistics 
with R MOOC on Coursera.

**[Colin Rundel](http://www2.stat.duke.edu/~cr173/)** - Duke University

Colin is an Assistant Professor of the Practice of Statistical Science at Duke 
University. His research interests include applied spatial statistics with an 
emphasis on Bayesian statistics and computational methods.

## Acknowledgements

- Version control section is derived from Data Carpentry's  [Version Control via Git and Github](https://github.com/datacarpentry/rr-version-control) module.
- More to be added as materials develop...