nc = sf::st_read(system.file("shape/nc.shp", package="sf"))

nc74 = dplyr::select(nc, dplyr::ends_with("74"))

png("fig.png", width=600, height=800)
plot(nc74, asp=1)
dev.off()