




shinyServer(function(input, output, session) {
  observeEvent(input$close, {
    js$closeWindow()
    stopApp()
  })
  
  
  output$return <- renderUI({
    
 
    
    
    shiny::a(h4("Return to Experiment", class = "btn btn-default action-button",
                style = "fontweight:600"))
    
    
  })
  
  output$path<-renderText(getwd())
  
}
)
