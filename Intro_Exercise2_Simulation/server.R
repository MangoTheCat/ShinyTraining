library(shiny)

function(input, output){

  output$datePlot <- renderPlot({
    
      dates <- seq(input$dateRange[1], input$dateRange[2], by = "day")
      
      nDates <- length(dates)
      
      simData <- switch(input$distribution,
                        "Normal" = rnorm(nDates),
                        "Uniform" = runif(nDates),
                        "Poisson" = rpois(nDates, lambda = 5))
    
      plot(dates, simData, type = "l")
      
    })

}