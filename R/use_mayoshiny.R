#' Shiny Template for Mayo
#'
#' An easy-to-use, accessible template with Mayo colors and logo.
#'
#' @param path A directory path for where to initialize the Shiny app.
#' @param ... Other arguments (not in use at this time)
#' @details Normally called when creating a new project in R Studio.
#'    \code{mayoshiny} has been replaced by \code{use_mayoshiny} and will be removed in
#'    future versions.
#' @export
mayo_shiny <- function(path, ...) {
  if (as.character(match.call()[[1]]) == "mayo_shiny") {
    warning(paste("please use use_mayoshiny() instead of mayo_shiny().",
            "mayo_shiny() will be removed in future versions"), call. = FALSE)
  }
  dir <- mayoshinypath()
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  file.copy(file.path(dir, "app.R"), file.path(path, "app.R"))
  file.copy(file.path(dir, "DESCRIPTION"), file.path(path, "DESCRIPTION"))
  dir.create(file.path(path, "data"))
}

#' @export
#' @rdname mayo_shiny
use_mayoshiny <- mayo_shiny


mayoshinypath <- function() {
  system.file(
    "rstudio", "templates", "project", "resources",
    package = "mayoshiny", mustWork = TRUE)
}
