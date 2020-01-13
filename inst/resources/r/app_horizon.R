library(shiny)
library(DT)
library(mayoshiny)


# UI ----------------------------------------------------------------------

ui <- fluidPage(title = "Mayo Clinic",

  header_main("Shiny Template"),

  navbarPage("",
    theme = mayoshiny::mayoshinytheme(theme = "horizon"),
    id = "nav", fluid = T,

    tabPanel(
      "Tab With Some Plots",
      header_section("Sample Plots",
                     stringi::stri_rand_lipsum(1, start_lipsum = TRUE)),
      plotOutput("noload") %>% mayoshiny::mayo_loader()
    ),

    tabPanel(
      "Some Tables Go Here",
      header_section("Sample Tables",
                     stringi::stri_rand_lipsum(1, start_lipsum = TRUE)),
      DTOutput("bedhourdiffTbl") %>% mayoshiny::mayo_loader()
    ),

    tabPanel("Anything Else You Want", value = "gr")
  )
)


# Server ------------------------------------------------------------------


server <- function(input, output, session) {


}


# Shiny App ---------------------------------------------------------------


shinyApp(ui, server)
