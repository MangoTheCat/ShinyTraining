library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("My app title", windowTitle = "My awesome Shiny app!"),         # Add a title
  
  fluidRow(
    
    plotOutput("simHist")
    
    ), # end of first row

  fluidRow(
    
    column(6,
           sliderInput("number", "Pick a number:", min = 1, max = 500, value = 100)
           ),
    
    column(6, 
           textInput("TXT", "Enter some text:")
           )
    
    )
      

      
      
)



