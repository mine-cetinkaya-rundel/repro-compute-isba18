paper.html: paper.Rmd Fig1/fig.png Fig2/fig.png
	Rscript -e "library(rmarkdown);render('paper.Rmd')"

Fig1/fig.png: Fig1/fig.R
	cd Fig1;Rscript fig.R

Fig2/fig.png: Fig2/fig.R
	cd Fig2;Rscript fig.R
