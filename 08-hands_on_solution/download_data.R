dir.create("data/raw", showWarnings = FALSE, recursive = TRUE)

datafile = "http://web1.sph.emory.edu/users/lwaller/book/ch2/scotland.dat"
download.file(datafile, "data/raw/scotland.dat", quiet = TRUE)

base_url = "http://web1.sph.emory.edu/users/lwaller/book/ch9/"
shapefiles = c("scot.shp", "scot.dbf", "scot.shx")
for(file in shapefiles) {
  download.file(file.path(base_url, file), destfile = file.path("data/raw", file), quiet = TRUE)
}