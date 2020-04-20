library(shiny)

ui <- navbarPage(
  theme = mayoshiny::mayoshinytheme(),
  title = div(
    img(
      src = "mayoshinythemes/images/logo_white.png",
      class = "brand-logo"
    ),
    "App Title"
  ),
  tabPanel(
    "Bootstrap Components",
    includeHTML(system.file("bootstrap_demo.html", package = "mayotheme"))
  ),
  tabPanel(
    "Loader",
    mayoshiny::mayo_loader(plotOutput("demo_loader"))
  ),
  tabPanel("DISCLAIMER", mayoshiny::disclaimer())
)


server <- function(input, output) {

}

# Run the application
shinyApp(ui = ui, server = server)
