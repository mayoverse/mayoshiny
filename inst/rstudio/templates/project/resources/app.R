
library(shiny)

ui <- navbarPage(
  theme = mayoshiny::mayoshinytheme(),
  "My cool new prediction app",
  tabPanel(
    "Navbar 1",
    sidebarPanel(
      fileInput("file", "File input:"),
      textInput("txt", "Text input:", "general"),
      sliderInput("slider", "Slider input:", 1, 100, 30),
      tags$h5("Default actionButton:"),
      actionButton("action", "Search"),

      dateInput("date", "Date"),
      selectInput("selecter", "Select a thing", c("A", "B")),

      tags$h5("actionButton with CSS class:"),
      actionButton("action2", "Action button", class = "btn-primary"),
      sliderInput("slider2", "Slider again:", 1, 5, 1:2),
      dateRangeInput("daterange", "Range", Sys.Date(), Sys.Date() + 5),
      radioButtons("rads", "Radio button:", c("A", "B"))
      # submitButton()
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(
          "Tab 1",
          h4("Table"),
          tableOutput("table"),
          h4("Verbatim text output"),
          verbatimTextOutput("txtout"),
          h1("Header 1"),
          h2("Header 2"),
          h3("Header 3"),
          h4("Header 4"),
          h5("Header 5")
        ),
        tabPanel("Tab 2", "This panel is intentionally left blank"),
        tabPanel("Tab 3", "This panel is intentionally left blank")
      )
    )
  ),
  tabPanel("Navbar 2", "This panel is intentionally left blank"),
  tabPanel("DISCLAIMER", mayoshiny::disclaimer())
)


server <- function(input, output) {
  output$txtout <- renderText({
    paste(input$txt, input$slider, format(input$date), input$rads, sep = ", ")
  })

  output$table <- renderTable({
    head(read.csv("data/testdata.csv"), 4)
  })
}


# Run the application
shinyApp(ui = ui, server = server)
