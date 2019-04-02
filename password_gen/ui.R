library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("EFF Password Generator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("words",
                   "Number of words to include:",
                   min = 0,
                   max = 6,
                   value = 0),
       submitButton(text = "Generate")
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
       textOutput('selected_var')
    )
  )
))
