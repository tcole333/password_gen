
library(dplyr)
library(shiny)

#data 
eff_list <- read.table("~/Downloads/eff_large_wordlist.txt")


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$selected_var <- renderText(
    paste('Password:', password_gen(input$words))

    
    
  )
  
})

#password gen function
password_gen <- function(words) {
  password <- NULL
  word_len <- words
  while (word_len >= 1) {
    x <- floor(runif(5, 1, 7))
    first_num <- paste(c(toString(x[1]),toString(x[2]), toString(x[3]),toString(x[4]), toString(x[5])), sep = "", collapse = "")
    pass <- filter(eff_list, eff_list$V1 == first_num)
    w <- pass$V2
    password <- c(password, toString(w))
    word_len = word_len - 1
  }
  print(paste(password, collapse = ""))
}
