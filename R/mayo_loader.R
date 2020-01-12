#' A custom Mayo themed loading gif
#'
#' Add a loader that shows when an output element is calculating
#'
#' @param ui_element A UI element that should include a loader while the
#'     corresponding output is being calculated
#'
#' @export
mayo_loader <- function(ui_element) {
  shinycustomloader::withLoader(
    ui_element = ui_element,
    type = "image",
    loader = "mayoshinythemes/www/loader.gif")
}
