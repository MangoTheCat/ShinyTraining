library(shiny)                             # Load the Shiny library

shinyServer(function(input, output) {      # Set up the Shiny Server
  
 output$simHist <- renderPlot({
   
   hist(rnorm(input$number))
   
   })
  
})
