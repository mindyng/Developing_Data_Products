library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Genetic Immunity to HIV/AIDS"),
  

   
    headerPanel("HIV resistance prediction"),
    
    sidebarLayout(
    sidebarPanel( "FAMILY HISTORY: In order to start using this application, all you need to do is enter how many of your parents carry the mutated gene that is resistant to HIV/AIDS",
    numericInput('HIV','(Please input 0, 1 or 2 only.)',2,min=0,max=2,step=3),
    submitButton('Predict!'),
    sidebarPanel("Documentation / User Guide"),
    includeHTML("HIV immunity - Wikipedia, the free encyclopedia.html")
    
  ),
    mainPanel(img(src="1budding_5.jpg", height = 200, width = 200),
              h3('Results of prediction'),
              h4('You entered:'),
              verbatimTextOutput("inputValue"),
              h4('Which resulted in a HIV resistance prediction % of:'),
              verbatimTextOutput("prediction"),
              img(src="delta-32-gene.gif", height = 400, width = 400)
  )
   )
))