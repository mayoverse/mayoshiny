#' Get Mayo bootstrap theme
#'
#' Retrieve the bootstrap.css file hosted in mayotheme

get_bootstrap <- function() {
  bootstrap <- mayotheme::use_mayo_css("bootstrap")
  logo <- mayotheme::use_mayo_logo("white")
  to <- file.path(mayoshinypath(), "www")
  invisible(file.copy(c(bootstrap, logo), to, overwrite = TRUE))
}
