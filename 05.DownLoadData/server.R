library(shiny)

function(input, output){
  
  simData <- reactive({
    
    dates <- seq(input$dateRange[1], input$dateRange[2], by = "day")
    
    nDates <- length(dates)
    
    simData <- switch(input$distribution,
                      "Normal" = rnorm(nDates),
                      "Uniform" = runif(nDates),
                      "Poisson" = rpois(nDates, lambda = 5))
    
    data.frame(dates = dates, data = simData)
    
    })
  

  output$datePlot <- renderPlot({
    
      simData <- simData()
    
      plot(simData$dates, simData$data, type = "l")
      
    })

  output$downloadData <- downloadHandler(filename = "simulatedData.csv",
                                         content = function(file){
                                            write.csv(simData(), file)
                                           })
  
}