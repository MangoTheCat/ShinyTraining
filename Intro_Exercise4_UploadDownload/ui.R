library(shiny)

fluidPage(
  
  titlePanel("Exercise 4: Upload Data, Download a Plot"),  # Add title
  
  sidebarLayout(
    
    sidebarPanel(

      fileInput("data", label = "Select dataset:"),
      
      downloadButton("DownloadPlot", "Download Plot")
    
      ), #Add sidebar
    
    mainPanel( 
      
      plotOutput(outputId = "histPlots")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page