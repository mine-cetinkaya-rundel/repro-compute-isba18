r_wkt_url = "https://gist.githubusercontent.com/hrbrmstr/07d0ccf14c2ff109f55a/raw/db274a39b8f024468f8550d7aeaabb83c576f7ef/rlogo.wkt"
r_wkt = readLines(r_wkt_url, warn = FALSE)

r = sf::st_as_sfc(r_wkt)

png("fig.png", width=600, height=600)
plot(r, col="grey")
dev.off()
