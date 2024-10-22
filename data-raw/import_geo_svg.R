# convert svgs to vectorized grobs
# this removes the need for users to have rsvg/grImport2
library(rsvg)
library(grImport2)

# download folder of optimized svgs from here:
# https://github.com/davenquinn/geologic-patterns/tree/optimized-svgs/assets/svg
# then remove any files that have a letter that isn't K (e.g., 101-C.svg; these are colored variants)

svgs <- list.files("data-raw/geo_svg/", pattern = ".svg")

geo_grobs <- list()
for (svg in svgs) {
  filename <- file.path(tempdir(), "temp.svg")
  rsvg_svg(paste0(getwd(), "/data-raw/geo_svg/", svg), filename)
  code <- gsub("(-.*)?.svg", "", svg)
  geo_grobs[[code]] <- pictureGrob(readPicture(filename, warn = FALSE),
                                   expansion = 0)
}

usethis::use_data(geo_grobs, compress = "xz", overwrite = TRUE)
