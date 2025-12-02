library(shiny)

ui <- fluidPage(
  titlePanel("Calculadora de IMC"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("peso", "Peso (kg):", value = 70, min = 1),
      numericInput("altura", "Altura (m):", value = 1.75, 
                   min = 0.5, max = 2.5, step = 0.01)
    ),
    
    mainPanel(
      h3("Resultado:"),
      textOutput("imc"),
      textOutput("classificacao")
    )
  )
)

server <- function(input, output) {
  output$imc <- renderText({
    imc <- input$peso / (input$altura^2)
    paste("Seu IMC é:", round(imc, 2))
  })
  
  output$classificacao <- renderText({
    imc <- input$peso / (input$altura^2)
    if (imc < 18.5) "Abaixo do peso"
    else if (imc < 25) "Peso normal"
    else if (imc < 30) "Sobrepeso"
    else "Obesidade"
  })
}

shinyApp(ui, server)