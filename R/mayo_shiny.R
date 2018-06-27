
#' Shiny Template for Mayo
#'
#' An easy-to-use, accessible template with Mayo colors and logo.
#'
#' @param path A directory path for where to initialize the Shiny app.
#' @param ... Other arguments (not in use at this time)
#' @details This function is normally called when creating a new project in R Studio.
#' @export
mayo_shiny <- function(path, ...)
{
  dir <- mayoshinypath()
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  file.copy(file.path(dir, "app.R"), file.path(path, "app.R"))
  file.copy(file.path(dir, "DESCRIPTION"), file.path(path, "DESCRIPTION"))
  dir.create(file.path(path, "data"))
  file.copy(file.path(dir, "data", "testdata.csv"), file.path(path, "data", "testdata.csv"))
}


mayoshinypath <- function() system.file("rstudio", "templates", "project", "resources", package = "mayoshiny", mustWork = TRUE)


