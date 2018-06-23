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
| 09:00 - 09:20 | [Welcome](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/00-welcome/00-welcome.html)      |  
| 09:20 - 10:30 | [Literate programming](https://htmlpreview.github.io/?https://github.com/mine-cetinkaya-rundel/repro-compute-isba18/blob/master/01-lit-program/01-lit-program.html)             |
| 10:00 - 10:30 | Organization                            |  
| 10:10 - 11:00 | :coffee: Coffee break                   |       
| 11:00 - 12:30 | Version control with Git and GitHub     |  
| 12:30 - 14:00 | :fork_and_knife:                        |               
| 14:00 - 15:30 | Scaling reproducible projects           |    
| 15:30 - 16:00 | :coffee:                                |       
| 16:00 - 17:00 | Automation with make                    |    

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

### Scaling reproducible projects (14:00 - 15:30)

- Introduce the data: Scottish lip cancer
- Demo R Markdown document with full analysis including EDA, model fitting with 
`rstan`, trace plots, and predictive checks.
  - Using chunk labels to identify R chunks that take a long time to run
- Caching as a solution to scaling
  - R Markdown caching: `cache = TRUE`
  - Build your own cache: Saving your own results with `save()` vs. `saveRDS()`
  - Drawbacks of these approaches: not aware of when updated
- Using make to automate and scale
  - Introduce make with a toy example of a paper
  - Review make syntax
  - Hands on exercise: Translate the (more complex) R Markdown document on 
  Scottish lip cancer into a project that uses make

### Automation with make (16:00 - 17:00)

- Finish up hands-on exercise
- Live demo of solution to exercise
- Local installation
- Q&A

## Computing requirements

- R - 3.5.0
- RStudio - 1.2.707 or higher
- git
  - OSX - install Git for Mac by downloading and running the installer or install homebrew and use it to install git via brew install git.
  - Unix / Linux - you should be able to install git via your prefered package manager (if it is not already installed).
  - Windows - install Git for Windows by download and running the git for windows installer. This will provide you with git, the bash shell, and ssh in windows.
- System libraries and development headers:
  - jags
  - geos
  - gdal
  - proj
  - texlive
  - libudunits2-dev
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