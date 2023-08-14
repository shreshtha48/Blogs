# library(shiny)
# 
# ui <- fluidPage(
#   sliderInput("x", "If x is", min = 1, max = 50, value = 30),
#   sliderInput("y", "and y is", min = 1, max = 50, value = 5),
#   "then, (x * y) is", textOutput("product"),
#   "and, (x * y) + 5 is", textOutput("product_plus5"),
#   "and (x * y) + 10 is", textOutput("product_plus10")
# )
# 
# server <- function(input, output, session) {
#   product=reactive({
#     input$x*input$y
#   })
#   
#   output$product <- renderText({ 
#     product()
#   })
#   output$product_plus5 <- renderText({ 
#     product() + 5
#   })
#   output$product_plus10 <- renderText({ 
#     product() + 10
#   })
# }
# 
# shinyApp(ui, server)

# library(shiny)
# library(ggplot2)
# 
# datasets <- c("economics", "faithfuld", "seals")
# ui <- fluidPage(
#   selectInput("dataset", "Dataset", choices = datasets),
#   verbatimTextOutput("summary"),
#   plotOutput("plot")
# )
# 
# server <- function(input, output, session) {
#   dataset <- reactive({
#     get(input$dataset, "package:ggplot2")
#   })
#   output$summary <- renderPrint({
#     summary(dataset())
#   })
#   output$plot <- renderPlot({
#     plot(dataset())
#   }, res = 96)
# }
# 
# shinyApp(ui, server)

library(shiny)
ui <- fluidPage(
  textInput("name", "What's your name?", value="john doe"),
  passwordInput("password", "What's your password?", value="********"),
  textAreaInput("story", "Tell me about yourself", rows = 3, placeholder = "please enter your answer"),
  numericInput("number","Number", min=0,max=100,value=0),
  sliderInput("number2", "Number", min=0,max=100, value=c(10,20)),
  radioButtons("rb", "Choose one:",
                 choiceNames = list(
                 icon("apple"),
                   icon("banana"),
                   icon("mango")
                 ),
                 choiceValues = list("apple", "banana", "mango")
    )
  )
  #> This Font Awesome icon ('angry') does not exist:
  #> * if providing a custom `html_dependency` these `name` checks can 
  #>   be deactivated with `verify_fa = FALSE`
  #> This Font Awesome icon ('smile') does not exist:
  #> * if providing a custom `html_dependency` these `name` checks can 
  #>   be deactivated with `verify_fa = FALSE`
  #> This Font Awesome icon ('sad-tear') does not exist:
  #> * if providing a custom `html_dependency` these `name` checks can 
  #>   be deactivated with `verify_fa = FALSE`


server=function(input, output, session){
  
}
shinyApp(ui, server)