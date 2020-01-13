library(fs)

shiny_dir <- "inst/examples/shiny"

# Clean out examples
if (dir_exists(shiny_dir)) dir_delete(shiny_dir)

# Create directory
dir_create(shiny_dir)

themes <- c("classic", "horizon")

for (theme in themes) {
  use_mayoshiny(path = path(shiny_dir, theme), theme = theme)
}


