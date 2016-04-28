library(shiny)                   # Load the library

fluidPage(                       # Setup the UI page
  
  titlePanel("Working With Data"),         # Add a title
  
  sidebarLayout(                                       # Specify layout
    
    sidebarPanel(                                      # Specify side bar
     
      fileInput("myFile", "Please choose a csv file:"),
      
      textInput("title", label = "Please give a title:")
      
    ),
    
    mainPanel(                                         # Specify Main Panel
      
      plotOutput("myPlot")
      
    )
  )
)



