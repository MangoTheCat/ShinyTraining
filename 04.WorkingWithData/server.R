library(shiny)                             # Load the Shiny library

#auctionData <- read.csv("auction2013.csv")

function(input, output) {      # Set up the Shiny Server
  
  readData <- reactive({
    
    inputFile <- input$myFile
    
    if(is.null(inputFile))
        return(NULL)
    
    read.csv(inputFile$datapath)
    
    })
  
 output$myPlot <- renderPlot({
   
    auctionData <- readData()
   
    plot(auctionData$Day, auctionData$Final, type = "l", main = input$title)
   
   })
  
}
