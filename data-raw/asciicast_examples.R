library(asciicast)

script <- "inst/examples/setup.R"
cast <- record(script)

svg <- "man/figures/setup.svg"
asciicast::write_svg(cast, svg, window = TRUE)

fs::dir_delete("my_app")
