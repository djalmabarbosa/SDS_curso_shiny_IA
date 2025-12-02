# SDS_curso_shiny_IA# Introdução ao Shiny com R e IA

Materiais do curso de introdução ao desenvolvimento de aplicativos web com Shiny usando R e ferramentas de Inteligência Artificial.

## 📋 Sobre o Curso

Este curso foi desenvolvido para introduzir estudantes e profissionais ao desenvolvimento de aplicativos web interativos usando R e Shiny, com foco especial em como utilizar ferramentas de IA (como ChatGPT, Claude e Gemini) para acelerar o aprendizado e desenvolvimento.

Este curso é uma ação de extensão do projeto Saúde Data Science, da Universidade Federal de Rondonópolis, preparado para o XIII Conasum e V Confacap, 2025.

**Instrutor:** Prof. Djalma Barbosa  
**Instituição:** Universidade Federal de Rondonópolis

## 🎯 Objetivos do Curso

- Apresentar conceitos fundamentais da linguagem R
- Introduzir o desenvolvimento de aplicativos web com Shiny
- Discutir como incorporar IA no processo de construção de aplicativos
- Desenvolver habilidades práticas de programação com suporte de IA

## 📚 Conteúdo Programático

### 1. Formas de Usar o R
- Interfaces disponíveis (RStudio, Positron, VS Code, Posit Cloud)
- Configuração do ambiente de desenvolvimento
- Boas práticas e atalhos essenciais

### 2. Fundamentos Básicos do R
- Operações e atribuição
- Tipos e estruturas de dados
- Vetores, data frames e listas
- Funções básicas essenciais

### 3. Funções no R
- Estrutura e anatomia de funções
- Criação de funções customizadas
- Argumentos e valores padrão
- Formas de passar argumentos

### 4. Manipulação de Dados
- Pacote dplyr e seus verbos principais
- Pipe operator (`%>%` e `|>`)
- Leitura e processamento de dados
- Transformações e agregações

### 5. Visualização de Dados
- ggplot2: gramática de gráficos
- Tipos de gráficos (dispersão, linha, barras, histogramas)
- Personalização e temas
- Gráficos interativos com Plotly

### 6. Programação Básica
- Estruturas condicionais (if/else)
- Loops e iterações
- Escopo de variáveis
- Gerenciamento de pacotes

### 7. Shiny - Fundamentos
- Arquitetura cliente-servidor
- Estrutura de um app (UI e Server)
- Layouts e organização de interface
- Inputs e outputs principais

### 8. Shiny - Aplicações Práticas
- Exemplos de apps do mundo real
- Casos de uso em diferentes áreas
- Galeria de inspiração

### 9. Reatividade no Shiny
- Conceito de reatividade
- Reactive sources, conductors e endpoints
- Funções `reactive()`, `observeEvent()` e `eventReactive()`
- Controle fino de reatividade com `isolate()`

### 10. IA e Prompting para R/Shiny
- Como usar IA efetivamente no desenvolvimento
- Estrutura de prompts eficazes
- Debugging com IA
- Iteração e refinamento de código
- Limitações e cuidados

### 11. Boas Práticas
- Organização de código e projetos
- Comentários e documentação
- Performance e otimização
- Segurança básica
- Tratamento de erros

### 12. Recursos e Próximos Passos
- Documentação oficial e comunidades
- Tutoriais e cursos recomendados
- Ferramentas de IA para desenvolvimento
- Projeto final

 ### 13. Projeto aplicado

## 🛠️ Pré-requisitos

- Conhecimento básico de programação (desejável, mas não obrigatório)
- Computador com R e RStudio instalados
- Acesso à internet para uso de ferramentas de IA

## 📦 Instalação

### Instalar R

Baixe e instale o R a partir do [CRAN](https://cran.r-project.org/)

### Instalar RStudio

Baixe e instale o RStudio a partir do [site oficial da Posit](https://posit.co/download/rstudio-desktop/)

### Pacotes necessários

Execute no R:
```r
# Pacotes essenciais
install.packages(c(
  "shiny",
  "dplyr",
  "ggplot2",
  "plotly",
  "DT",
  "readr",
  "readxl",
  "tidyr",
  "stringr",
  "lubridate"
))
```

## 📁 Estrutura do Repositório
```
.
├── README.md              # Este arquivo
├── Slides.qmd            # Apresentação do curso (Quarto)
├── images/               # Imagens usadas nos slides
│   └── logoUFR.png
├── custom.scss           # Estilos customizados
├── styles.css            # CSS adicional
└── examples/             # Exemplos de código (a ser adicionado)
```

## 🚀 Como Usar os Materiais

### Visualizar os Slides

1. Abra o arquivo `Slides.qmd` no RStudio
2. Instale o Quarto se ainda não tiver:
```r
   install.packages("quarto")
```
3. Clique em "Render" ou pressione `Ctrl+Shift+K`

### Seguir o Curso

1. Acompanhe os slides na ordem apresentada
2. Execute os exemplos de código no RStudio
3. Pratique com os exercícios propostos
4. Use ferramentas de IA para tirar dúvidas e expandir aprendizado

## 🎓 Projeto Final

Ao final do curso, os alunos devem desenvolver um aplicativo Shiny completo:

1. **Escolher um tema/problema** de interesse pessoal
2. **Planejar funcionalidades** (inputs, outputs, visualizações)
3. **Desenvolver iterativamente** usando IA como assistente
4. **Documentar** o código adequadamente
5. **Testar** com usuários reais
6. **Publicar** (opcional) no shinyapps.io ou GitHub

## 📝 Licença

Este material é disponibilizado para fins educacionais. Sinta-se livre para usar, modificar e compartilhar, mantendo os créditos apropriados.

## 👤 Contato

**Prof. Djalma Barbosa**  
Universidade Federal de Rondonópolis  
GitHub: [djalmabarbosa](https://github.com/djalmabarbosa)

