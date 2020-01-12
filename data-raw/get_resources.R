#' Get Mayo bootstrap theme
#'
#' Retrieve the bootstrap.css file hosted in mayotheme

get_resources <- function() {
  bootstrap <- mayotheme::use_mayo_css("bootstrap")
  shinycss <- "inst/resources/css/classic.css"

  file <- tempfile(fileext = "css")

  fs::file_create(file)

  css_files <- c(bootstrap, shinycss)

  for (css_file in css_files) {
    css <- readChar(css_file, file.info(css_file)$size)
    write(css, file = file, append = TRUE)
  }

  logo <- mayotheme::use_mayo_logo("white")

  img_path <- fs::path("inst/resources/images")
  css_path <- fs::path("inst/resources/css")

  fs::file_copy(file, fs::path(css_path, "bootstrap.css"), overwrite = TRUE)
  fs::file_copy(logo, img_path, overwrite = TRUE)

}
