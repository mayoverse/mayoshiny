#' Add a main header
#'
#' This function adds a primary header to a Mayo shiny app.  It is only meant
#'     to be used with the the theme \code{horizon}
#' @param logo_text Text to appear in the main header logo
#' @export

header_main <- function(logo_text) {
  shiny::tagList(
    shiny::tags$div(class = "topbar"),
    shiny::tags$div(class = "container-fluid",
        shiny::tags$p(logo_text, class = "header-text"),
        shiny::img(src = "mayoshinythemes/images/shiny_logo_min.png",
            width = "250px",
            class = "header-logo"))
  )
}

#' Add a tab panel header
#'
#' This function adds a header section to a Mayo shiny app.  It is only meant
#'     to be used with the the theme \code{horizon}
#' @param title Section title
#' @param description Sesction description
#' @export

header_section <- function(title, description) {
  shiny::tagList(
    shiny::tags$h3(title, class = "tabTitle"),
    shiny::tags$p(class = "tabDesc", description),
    shiny::div(class = "tabTitlePanel-end")
  )
}
