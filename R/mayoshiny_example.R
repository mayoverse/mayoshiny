#' View example of a Mayo Shiny template
#'
#' Run a local instance of a Shiny template
#'
#' @param theme Name of a theme.
#' @export

mayoshiny_example <- function(theme = c("classic", "horizon")) {
  theme <- match.arg(theme)
  path <- system.file("examples/shiny", theme, "app.R", package = "mayoshiny")
  shiny::runApp(path)
}
