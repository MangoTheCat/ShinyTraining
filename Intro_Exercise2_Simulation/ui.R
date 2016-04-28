library(shiny)

fluidPage(
  
  titlePanel("Exercise 2: Simulating Data"),  # Add title
  
  sidebarLayout(
    
    sidebarPanel(
      
      dateRangeInput("dateRange", "Select start and end dates:"),
      
      radioButtons("distribution", "Select distribution:",
                   choices = c("Normal", "Poisson", "Uniform"))

      
      ), #Add sidebar
    
    mainPanel( 
      
      plotOutput(outputId = "datePlot")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page