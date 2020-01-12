#' A custom Mayo themed loading gif
#'
#' @export
mayo_loader <- function(ui_element, ...) {
  shinycustomloader::withLoader(
    ui_element = ui_element,
    type = "image",
    proxy.height = "100px",
    loader = "mayoshinythemes/www/loader.gif")
}
