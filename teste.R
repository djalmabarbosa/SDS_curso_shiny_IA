
library(shiny)

# Interface do Usuário (UI)
ui <- fluidPage(
  fluidRow(
    column(6, "Coluna 1"),
    column(6, "Coluna 2")
  )
)

# Servidor (lógica)
server <- function(input, output) {
  # Código reativo aqui
}

# Executar o app
shinyApp(ui = ui, server = server)
