# convert svgs to vectorized grobs
# this removes the need for users to have rsvg/grImport2
library(rsvg)
library(grImport2)

# download the folder of optimized svgs from here:
# https://github.com/davenquinn/geologic-patterns/tree/optimized-svgs/assets/svg
# then remove any files that have a letter that isn't K (e.g., 101-C.svg; these are colored variants)
# then run the following code

svgs <- list.files("data-raw/geo_svg/", pattern = ".svg")

geo_grobs <- list()
for (svg in svgs) {
  filename <- file.path(tempdir(), "temp.svg")
  rsvg_svg(paste0(getwd(), "/data-raw/geo_svg/", svg), filename)
  code <- gsub("(-.*)?.svg", "", svg)
  grob <- pictureGrob(readPicture(filename, warn = FALSE), expansion = 0)
  grob$vp[[1]]$width <- unit(1, "npc")
  grob$vp[[1]]$height <- unit(1, "npc")
  geo_grobs[[code]] <- grob
}

usethis::use_data(geo_grobs, compress = "xz", overwrite = TRUE)
