
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Predict your height!"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        numericInput('pheight','Parents height in inches',70,min=48,max=84,step=.5)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h2('Your predicted height is:'),
      textOutput("predheight")
    )
  )
))
