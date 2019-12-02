#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Developing Data Products Assignment 1: R Markdown and Leaflet"),
    titlePanel(format(Sys.time(), "%a %b %d %X %Y %Z")),
    br(),
    br(),

        # Show a plot of the generated distribution
        mainPanel(
          
           leafletOutput("m")
        )
    )


# Define server logic required to draw a histogram
server <- function(input, output) {

       output$m <- renderLeaflet({
        leaflet() %>%
        addTiles() %>%  # Add default OpenStreetMap map tiles
        addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
