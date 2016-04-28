library(shiny)
library(ggplot2)

function(input, output){

  readData <- reactive({
    
    inputFile <- input$data
    
    if(is.null(inputFile))
      return(NULL)
    
    read.csv(inputFile$datapath)
    
    })
  
  myPlot <- reactive({
    
    selectedData <- readData()
    
    qplot(selectedData[ , 2], geom = "histogram")
    
    })
  
  output$histPlots <- renderPlot({
    
      print(myPlot())
      
    })
  
  output$DownloadPlot <- downloadHandler(filename = "plot.png", 
                                         content = function(file){
                                           png(file)
                                           print(myPlot())
                                           dev.off()
                                           })

}