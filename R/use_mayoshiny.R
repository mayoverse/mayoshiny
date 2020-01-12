#' Shiny Template for Mayo
#'
#' An easy-to-use, accessible template with Mayo colors and logo.
#'
#' @param path A directory path for where to initialize the Shiny app.
#' @param theme Name of a theme.
#' @param ... Other arguments (not in use at this time)
#' @details Normally called when creating a new project in R Studio.
#'    \code{mayoshiny} has been replaced by \code{use_mayoshiny}
#'    and will be removed in future versions.
#' @export
mayo_shiny <- function(path, theme = c("classic", "horizon"), ...) {
  if ("mayo_shiny" %in% as.character(match.call()[[1]])) {
    warning(paste("please use use_mayoshiny() instead of mayo_shiny().",
            "mayo_shiny() will be removed in future versions"), call. = FALSE)
  }

  theme <- match.arg(theme)

  app_file <- paste0("app_", theme, ".R")

  dir <- mayoshinypath()
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  file.copy(file.path(dir, "r", app_file), file.path(path, "app.R"))
  file.copy(
    file.path(dir, "other", "DESCRIPTION"),
    file.path(path, "DESCRIPTION"))
  dir.create(file.path(path, "data"))
  dir.create(file.path(path, "www"))
}

#' @export
#' @rdname mayo_shiny
use_mayoshiny <- mayo_shiny


mayoshinypath <- function() {
  system.file("resources", package = "mayoshiny", mustWork = TRUE)
}
