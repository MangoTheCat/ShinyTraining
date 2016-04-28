library(shiny)

function(input, output){

  readData <- reactive({
    
      read.csv(file.path("./Data", input$data))
    
    })
  
  
  output$histPlots <- renderPlot({
    
      selectedData <- readData()
    
      numericCols <- which(sapply(selectedData, class) %in% c("integer", "numeric"))
      
      par(mfrow = c(3,3))
      
      for(i in numericCols)
        hist(selectedData[ , i])
      
    })

}