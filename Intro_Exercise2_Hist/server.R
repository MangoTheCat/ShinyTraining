library(shiny)

function(input, output){

  output$simHist <- renderPlot({
    
      normData <- rnorm(input$numberOfSims)
    
      hist(normData, col = input$colour, main = input$title)
      
      if(input$meanLine) abline(v = median(normData))
    })

}