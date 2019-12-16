#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Iris dataset plots"),
    
    sidebarPanel(
        radioButtons("variable", "Measurement type:",
                     c("Sepal Length" = "Sepal.Length",
                       "Sepal Width" = "Sepal.Width",
                       "Petal Length" = "Petal.Length",
                       "Petal Width" = "Petal.Width")),
    ),
    
    mainPanel(
        # Output: Formatted text for caption ----
        h3(textOutput("caption")),
        
        # Output: Plot of the requested variable against mpg ----
        plotOutput("mpgPlot"),
    )
))
    
    
   
    
    
