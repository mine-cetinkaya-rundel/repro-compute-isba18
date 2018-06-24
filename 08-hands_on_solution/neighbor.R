library(magrittr)

lip_cancer = readRDS("results/lip_cancer.rds")

d = sf::st_distance(lip_cancer %>% sf::st_set_crs(NA))

W = (d == 0.0) * 1L

m = rowSums(W)

saveRDS(W, "results/W.rds")
saveRDS(m, "results/m.rds")