#' Get Mayo bootstrap theme
#'
#' Retrieve the bootstrap.css file hosted in mayotheme

get_resources <- function() {

  img_path <- fs::path("inst/resources/images")
  css_path <- fs::path("inst/resources/css")

  bootstrap <- mayotheme::use_mayo_css("bootstrap")
  shinycss <- "inst/resources/css/classic.css"

  file <- tempfile(fileext = "css")

  fs::file_create(file)

  css_files <- c(bootstrap, shinycss)

  for (css_file in css_files) {
    css <- readChar(css_file, file.info(css_file)$size)
    write(css, file = file, append = TRUE)
  }

  horizon <- fs::file_temp(ext = "css")
  fs::file_copy(file, horizon)

  horizon_css_file <- "inst/resources/css/shiny_horizon.css"
  horizon_css <- readChar(horizon_css_file, file.info(horizon_css_file)$size)
  write(horizon_css, file = horizon, append = TRUE)

  fs::file_copy(
    horizon,
    fs::path(css_path, "bootstrap_horizon.css"), overwrite = TRUE)

  logo <- mayotheme::use_mayo_logo("white")

  fs::file_copy(file, fs::path(css_path, "bootstrap.css"), overwrite = TRUE)
  fs::file_copy(logo, img_path, overwrite = TRUE)

}
