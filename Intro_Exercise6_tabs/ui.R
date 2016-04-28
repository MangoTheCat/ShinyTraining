library(shiny)

fluidPage(
  
  titlePanel("Exercise 5: Changing the layout"),  # Add title
  
  fluidRow(
    column(4, 
           fileInput("data", label = "Select dataset:")
    ),
    column(4, 
           selectInput("colour", "Choose colour:", choices = c("red", "blue"))),
    column(4, 
           p("This is an application that shows a plot and some data")
           )
  ),
  
  
  fluidRow(
    
    tabsetPanel(
      tabPanel("Plot of Data", plotOutput(outputId = "histPlots")),
      tabPanel("The Data", dataTableOutput("data")) 
      )
    
    
    )
  
) # Close page