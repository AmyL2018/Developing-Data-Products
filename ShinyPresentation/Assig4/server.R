#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

mData <- iris
shinyServer(
    function(input, output) {
    formulaText <- reactive({
         paste("Species vs ", input$variable)
     })
    
     output$caption <- renderText({
         formulaText()
     })
     output$mpgPlot <- renderPlot({
         ggplot(mData, aes_string(y=input$variable, x="Species")) + geom_point(colour = 'red', size = 2)
     })
}
)

