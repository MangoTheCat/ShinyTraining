library(shiny)

function(input, output){

  output$myTextOutput <- renderText({
    
      paste("You entered the text:", input$TXT, 
            "\nYou entered the number:", input$myNumber,
            "\nYou select:", input$mySelection)
    
    })

}