library(shiny)

function(input, output){

  output$myTextOutput <- renderText({
    
      paste("You entered the text:", input$TXT)
    
    })

}