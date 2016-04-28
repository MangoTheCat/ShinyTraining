library(shiny)
library(ggplot2)

function(input, output){
  
  readData <- reactive({    
    inputFile <- input$data 
    
    validate(
      need(!is.null(inputFile), "Please choose an input file")
      )
    
    if(is.null(inputFile))
      return(NULL)    
    read.csv(inputFile$datapath)  
  })
  
  output$histPlots <- renderPlot({
    selectedData <- readData()
    print(qplot(selectedData[ , 2], geom = "histogram", fill = I(input$colour))  )
  })
  
  output$data <- renderDataTable({
      readData()
    })
  
}