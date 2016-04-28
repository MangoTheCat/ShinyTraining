library(shiny)

fluidPage(
  
  titlePanel("Changing Outputs"),  # Add title
  sidebarLayout(
    
    sidebarPanel(
      
      textInput(inputId = "TXT", label = "Enter text here:", value = "Hello!"),
      
      numericInput("myNumber", label = "Please select a number:", value = 5,
                   min = 0, max = 10, step = 0.5),
      
      selectInput("mySelection", label = "Please choose an option:", 
                  choices = c("red", "green", "yellow", "blue"))
      
      ), #Add sidebar
    
    mainPanel( 
      
      plotOutput("myHistogram"),
      
      textOutput(outputId = "myTextOutput"),
      
      dataTableOutput("myData")
      
      ) # Add the main panel
    
    ) # Close side layout
  
) # Close page