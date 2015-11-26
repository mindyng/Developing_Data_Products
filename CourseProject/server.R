HIVRisk<-function(HIV) (HIV/2)*100

shinyServer(function(input, output) {
  output$inputValue <- renderPrint({ input$HIV })
  output$prediction <- renderPrint({HIVRisk(input$HIV)})
})