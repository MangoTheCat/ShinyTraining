library(shiny)

function(input, output){

  output$myTextOutput <- renderText({
    
      paste("You entered the text:", input$TXT, 
            "\nYou entered the number:", input$myNumber,
            "\nYou select:", input$mySelection)
    
    })
  
  output$myData <- renderDataTable({
    
    airquality

    })

  output$myHistogram <- renderPlot({
    
    normalData <- rnorm(1000, mean = input$myNumber)
    
    hist(normalData, col = input$mySelection)
    
    })
  
}