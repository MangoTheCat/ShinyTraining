library(shiny)

fluidPage(
  
  titlePanel("Exercise 1: Using Date Inputs"),  # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      dateInput("date", label = "Please select a date:")
      
      ), #Add sidebar
    
    mainPanel( 
      
      verbatimTextOutput(outputId = "myTextOutput")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page