lip_cancer.html: lip_cancer.Rmd results/lip_cancer.rds results/m.rds results/W.rds results/car_fit.rds
	Rscript -e "rmarkdown::render('lip_cancer.Rmd')"

data/raw/scotland.dat data/raw/scot.shp data/raw/scot.shx data/raw/scot.dbf: download_data.R
	Rscript download_data.R


results/car_fit.rds: models/car_model.stan results/lip_cancer.rds fit_car_model.R
	Rscript fit_car_model.R

results/lip_cancer.rds: data/raw/scot.shp data/raw/scot.shx data/raw/scot.dbf data/raw/scotland.dat munge_data.R
	Rscript munge_data.R
	
results/W.rds results/m.rds: results/lip_cancer.rds neighbor.R
	Rscript neighbor.R
