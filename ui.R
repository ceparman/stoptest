library(shiny)
library(shinyjs)

jscode <- "shinyjs.closeWindow = function() { window.close(); }"

  
  shinyUI(fluidPage(
    useShinyjs(),
    extendShinyjs(text = jscode, functions = c("closeWindow")),
    actionButton("close", "Close window"),
    uiOutput("return"),
    textOutput("path")
  
  ))