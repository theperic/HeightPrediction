
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(UsingR)
data(galton)
lmPredict <- lm(galton$child ~ galton$parent)

shinyServer(function(input, output) {
    
        
    output$predheight<-renderText(lmPredict$coeff[1] + lmPredict$coeff[2] * input$pheight)
    

})
