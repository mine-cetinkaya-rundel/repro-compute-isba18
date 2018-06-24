library(magrittr)

datafile = "data/raw/scotland.dat"

col_names = read.table(datafile, nrows=1, sep=" ", stringsAsFactors = FALSE) %>% 
  dplyr::select(2:7) %>%
  unlist()

data = read.table(datafile, header=FALSE, skip=1) %>%
  setNames(col_names)


## Combine

lip_cancer = sf::read_sf("data/raw/scot.shp") %>%
  sf::st_set_crs("+proj=longlat +datum=NAD27 +no_defs") %>%
  dplyr::rename(Name = NAME, District = ID) %>% 
  dplyr::full_join(data) %>%
  dplyr::rename(id = District, District = Name, AFF = `%AFF`)

dir.create("results", showWarnings = FALSE)
saveRDS(lip_cancer, "results/lip_cancer.rds")