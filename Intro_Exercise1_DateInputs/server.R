library(shiny)

function(input, output){

  output$myTextOutput <- renderText({
    
      paste(input$date, 
            format(input$date, "The day is %A, the month is %B, the year is %Y") )
    
    })

}