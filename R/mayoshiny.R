
#' Templates for Shiny Apps at Mayo Clinic
#'
#' Templates for Shiny Apps at Mayo Clinic.
#'
#' @section Functions:
#'
#' \code{\link{mayo_shiny}}
#'
#' \code{\link{mayoshinytheme}}
#'
#' @examples
#' library(mayoshiny)
#'
#' @docType package
#' @name mayoshiny
#'
NULL

#### commands to build the package using devtools
# devtools::check_man()
# devtools::check()
# withr::with_libpaths(c("../testinstalls/", .libPaths()),
#                      devtools::install("../rpkg-mayoshiny/", build_vignettes = TRUE, dependencies = FALSE))
# withr::with_libpaths(c("../testinstalls/", .libPaths()), devtools::build("../rpkg-mayoshiny/"))
## < restart R >
## library(mayoshiny, lib.loc = "../testinstalls/")

#### to upload to CRAN
## Update DESCRIPTION, README.md, NEWS.md, and cran-comments.md
# devtools::revdep_check()
# devtools::release()
