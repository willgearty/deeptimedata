#' FGDC Geologic Pattern Data
#'
#' Geologic map and lithology patterns as defined in the [FGDC Digital
#' Cartographic Standard for Geologic Map
#' Symbolization](https://ngmdb.usgs.gov/fgdc_gds/geolsymstd.php) by the [U.S.
#' Geological Survey](https://www.usgs.gov/) and the [Geologic Data Subcommittee
#' (GDS)](https://ngmdb.usgs.gov/fgdc_gds/index.php) of the [Federal Geographic
#' Data Committee (FGDC)](https://www.fgdc.gov/). [deeptime::geo_grob()] and
#' [deeptime::geo_pattern()] should be used to retrieve and modify an individual
#' pattern as a \link[grid:gTree]{grob} object or [GridPattern][grid::patterns]
#' object, respectively.
#'
#' For specific pattern codes, see the "pattern numbers" in the [full pattern
#' chart](https://ngmdb.usgs.gov/fgdc_gds/geolsymstd/fgdc-geolsym-patternchart.pdf).
#' Daven Quinn has also assembled more accessible documentation of the [map
#' patterns/codes](https://davenquinn.com/projects/geologic-patterns/#pattern-reference)
#' and [lithology
#' patterns/codes](https://davenquinn.com/projects/geologic-patterns/#series-600).
#' [rmacrostrat::def_lithologies()] can also be used to look up pattern codes
#' for various lithologies (see the "fill" column). Note that patterns
#' associated with color variants (e.g., "101-M") are not included but can be
#' created using [deeptime::geo_grob()].
#'
#' These patterns were originally processed and optimized by Daven Quinn and are
#' hosted on [GitHub](https://github.com/davenquinn/geologic-patterns/).
#'
#' @format A list, where each item corresponds to a geologic pattern stored as a
#'   \link[grid:gTree]{gTree} object as returned by [grImport2::pictureGrob()].
#'   The names of the list correspond to the pattern codes.
#' @source <https://ngmdb.usgs.gov/fgdc_gds/geolsymstd.php> via
#'   <https://github.com/davenquinn/geologic-patterns>
"geo_grobs"
