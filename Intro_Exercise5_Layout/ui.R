library(shiny)

fluidPage(
  
  titlePanel("Exercise 5: Changing the layout"),  # Add title
  
  fluidRow(
    
    plotOutput(outputId = "histPlots")
    
    ),
  
  fluidRow(
    column(4, 
           fileInput("data", label = "Select dataset:")
           ),
    column(4, 
           selectInput("colour", "Choose colour:", choices = c("red", "blue")))
    )
  
) # Close page