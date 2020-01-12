
#' Use a Mayo Shiny Theme
#'
#' Style a Shiny app with Mayo colors.
#'
#' @details Use this as the \code{theme = } argument to the main shiny
#'     page-builder functions, e.g., \code{\link[shiny]{fluidPage}}.
#' @return Returns a file path reference to the Mayo Shiny CSS file,
#'     and attaches that path so shiny knows about it.
#' @seealso \code{\link[shinythemes]{shinytheme}}
#' @examples
#' \dontrun{
#' shinyApp(
#'   ui = fluidPage(theme = mayoshinytheme(), ...),
#'   server = function(input, output) { }
#' )
#' }
#' @export
mayoshinytheme <- function() {
  shiny::addResourcePath("mayoshinythemes", mayoshinypath())
  file.path("mayoshinythemes", "www", "bootstrap.css")
}
