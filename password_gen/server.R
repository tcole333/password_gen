
library(shiny)

#data 
eff_list <- read.table("eff_large_wordlist.txt")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$selected_var <- renderText(
    paste('Password:', password_gen(input$words))

    
    
  )
  
})

#password gen function
password_gen <- function(words) {
  password <- paste(sample(eff_list$V2, words), sep = '', collapse = '')
  return(password)
}
