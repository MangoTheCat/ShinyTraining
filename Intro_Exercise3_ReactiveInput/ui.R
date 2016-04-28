library(shiny)

fluidPage(
  
  titlePanel("Exercise 3: Reactive Inputs"),  # Add title
  
  sidebarLayout(
    
    sidebarPanel(

      selectInput("data", label = "Select dataset:", 
                  choices = list.files("./Data"))
    
      ), #Add sidebar
    
    mainPanel( 
      
      plotOutput(outputId = "histPlots")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page