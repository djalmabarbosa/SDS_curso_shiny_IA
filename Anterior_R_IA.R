# O que precisamos saber sobre o R {background-color="#2C3E50"}

---

::: incremental
-   É um *software* livre e gratuito
-   É também uma *linguagem de programação*
-   Muita gente usa, especialmente estatísticos (grande comunidade)
-   Existem *pacotes* pré-instalados (base), e outros que você precisa instalar
-   Pacotes diferentes podem ter *gramáticas* diferentes
-   Para operacionalizar, escrevemos *scripts* ou *programas*, que envolve uma gramática relacionando *objetos* e *funções*
:::

# O que precisamos saber sobre o R

---

::: incremental
-   Existe um esforço de integração de pacotes muito útil (tidyverse)
-   Pacotes que não são do 'base' precisam ser instalados e carregados
-   É uma linguagem, e portanto permite melhor comunicação com IA
-   Você pode escrever seu código em diversos ambientes
-   Você pode usar controle de versões (GitHub)
:::

# O que precisamos saber sobre o R

---

Onde escrever meu código em R?

| **Ambiente** | **Facilidade** | **Recursos** | **Recomendado para**            |
|------------------|------------------|------------------|-------------------|
| Console R    | ⭐⭐           | ⭐           | Testes rápidos                  |
| RStudio      | ⭐⭐⭐         | ⭐⭐⭐       | Iniciantes e análises completas |
| VS Code      | ⭐⭐           | ⭐⭐⭐       | Desenvolvedores multi-linguagem |
| Positron     | ⭐⭐⭐         | ⭐⭐⭐       | Ciência de dados moderna        |


# Fundamentos da Linguagem R {background-color="#003D5C"}

## Objetos

::: incremental
O R possui 5 *classes básicas (atômicas)* de objetos:  

1.  caracter  
2.  numérico (números reais)  
3.  inteiro  
4.  complexo  
5.  lógico (verdadeiro/falso)
:::

## Atributos

::: incremental
Objetos podem ter como atributos:  

-   *names*, *dimnames*
-   *dimensions*, para matrizes ou arranjos
-   *class*
-   *length*
-   Outras, definidas pelo usuário
:::

## Criando objetos

Criamos objetos escrevendo *expressões* com o *operador de atribuição*

```{r, echo=TRUE, eval=FALSE}

x <- 1

```

## Criando objetos

---

A **gramática da linguagem** determina se uma expressão está ou não completa

``` r
> x <-   ## expressão incompleta

# indica comentário. Tudo depois dele é ignorado.
```

------------------------------------------------------------------------

Quando uma expressão completa é colocada no **prompt** ela é avaliada, e o resultado da avaliação é retornado

``` r
x # print automático
print(x) # print explícito

# [1] 5 indica que x é um vetor, e que 5 é o primeiro elemento.
```

------------------------------------------------------------------------

### Vetor {.smaller}

-   É o tipo de objeto mais básico

-   Objetos mais elaborados são uma extensão de vetores

-   Um vetor contém apenas objetos atômicos da mesma classe

-   A função *c( )* pode ser utilizada para criar vetores de objetos

    ``` r
    x <- c(0.4, 0.9)                              # numérico
    x <- c(TRUE, FALSE)                           # lógico
    x <- c(T, F)                                  # lógico
    x <- c("Vacinado", "Não Vacinado", "Dúvida")  # caractere
    x <- 3:25                                     # inteiro
    x <- c(2+0i, 1+4i)                            # complexo
    ```

------------------------------------------------------------------------

### Matrizes

-   Matrizes são vetores, com o atributo *dimensão*

    -   O próprio atributo *dimensão* é um vetor

-   São construídas a partir da coluna (primeira à esquerda em diante)

```{r, echo=TRUE}
m <- matrix(1:6, nrow = 2, ncol = 3) 
m

dim(m)

attributes(m)
```

------------------------------------------------------------------------

::: callout-tip
As funções *cbind()* e *rbind()* são muito comuns e podem ser utilizadas para criar matrizes:

```{r, echo=TRUE, eval=FALSE}
x <- 1:4
y <- 10:13

cbind(x,y)

rbind(x,y)
```
:::

---

### Listas

-   Listas são um tipo especial de vetores
    -   podem conter elementos de diversas classes

```{r, echo=TRUE}
x <- list(1, "a", TRUE, 1 + 4i) 
x
```

------------------------------------------------------------------------

### Fatores

-   São utilizados para representar dados categóricos
-   Podem ser ordenados ou não
-   Podem ser vistos como vetores inteiros que possum um rótulo (*label*)
-   São tratados de forma especial em modelagem
-   A odem dos níveis pode ser estabelecida com o argumento *levels* da função *factor()*.
    -   Relevante para modelagem, pois o primeiro nível é utilizado como *baseline*

------------------------------------------------------------------------

```{r, echo=TRUE}

x <- factor(c("sim", "sim", "não", "sim", "não"))
x

table(x)

x <- factor(c("sim", "sim", "não", "sim", "não"),
            levels = c("sim", "não"))
```

---

### Valores ausentes (*missing values*)

-   Valores ausentes são denotados por *NA* ou *NaN*

-   *NaN* refere-se a operações matemáticas não definidas

    -   um *NaN* é também um *NA*, mas o inverso não é verdadeiro

-   Podemos usar *is.na( )* para testar se um objeto é *NA*

-   Podemos usar *is.nan( )* para testar se um objeto é *NaN*

------------------------------------------------------------------------

```{r, echo=TRUE}
x <- c(1, 2, NA, 10, 3)

is.na(x)

is.nan(x)
```

---

### Quadro de dados (*data frames*) {.smaller}

São utilizados para armazenar dados tabulares, tabelas

-   São representados como um tipo especial de lista onde cada elemento da lista possui o mesmo comprimento

-   Cada elemento da lista é como uma **variável**, e o comprimento de cada lista o *número de linhas*

-   Possuem um atributo especial: *row.names*

-   Geralmente são criados chamando *read.table()* ou *read.csv()*

------------------------------------------------------------------------

Também podemos criá-los com a função *data.frame( )*:

```{r, echo=TRUE}
x <- data.frame(paciente = 1:4, retorno = c(T, T, F, F)) 

x

nrow(x)

ncol(x)
```
---

### *Subsetting*

-   Refere-se à operação de extrair subconjuntos dos objetos do R

-   Existem formas diferentes, dependendo do tipo de objeto

------------------------------------------------------------------------

#### Vetores

-   Utilizamos \[ \]
-   Retorna um subconjunto cujo elemento é da mesma classe do original
-   Pode ser utilizado para selecionar mais de um elemento

```{r, echo = TRUE, eval=FALSE}
 x <- c("a", "b", "c", "c", "d", "a")
 x[1]
 
 x[2]

x[1:4]

x[x > "a"]
```

------------------------------------------------------------------------

#### Matrizes

-   Utilizamos\[ \]

-   Consideramos os índices *i* (linhas) e *j* (colunas): *(i,j)*

    ```{r, echo = TRUE}
    x <- matrix(1:6, 2, 3)
    x[1,2]
    x[2,1]
    ```

---

#### Matrizes

-   Podemos selecionar apenas linhas ou colunas

    ```{r, echo=TRUE}
    x[1,]
    x[, 2]
    ```

------------------------------------------------------------------------

#### Listas

Podemos utilizar \[ \], \[ \[ \] \] ou \$

```{r, echo = TRUE}

x <- list(Hosp = 1:4, UBS = 2)

x[1]

x[[1]]

x$UBS

x[["UBS"]]

```

#### Data frames

``` r

pacientes <- data.frame(
  id = c(101, 102, 103, 104),
  nome = c("Ana", "Carlos", "Beatriz", "Daniel"),
  idade = c(35, 42, 29, 50),
  hipertensao = c(TRUE, TRUE, FALSE, TRUE),
  glicemia = c(92, 110, 85, 130)
)

# Selecionar a primeira linha, segunda coluna (nome do primeiro paciente)
pacientes[1, 2]    # "Ana"

# Selecionar as duas primeiras linhas, todas as colunas
pacientes[1:2, ]

# Selecionar todas as idades
pacientes[, "idade"]

# Selecionar pacientes com glicemia maior que 100 (potencial risco de diabetes)
pacientes[pacientes$glicemia > 100, ]

# Selecionar pacientes com hipertensão
pacientes[pacientes$hipertensao == TRUE, ]
```
---

### Estruturas de controle

-   São mais úteis para escrever **programas** (*scripts*)

-   Permitem controlar o fluxo de execução do script

-   Na linha de comando, as funções *apply* são mais úteis

------------------------------------------------------------------------

### Estruturas de controle:

-   if, else

-   for

-   while

-   repeat

-   break

-   next

-   return

------------------------------------------------------------------------

### Estruturas de controle:

-   If, else: testam um condição

    ``` r
     if(<condição>) {
            ## faz algo
     } else {
            ## faz outra coisa
     }
    ```

-   

    ``` r
    if(x > 3) {
            y <- 10
     } else {
            y <- 0
     }
    ```

------------------------------------------------------------------------

### Estruturas de controle:

-   for: executa um *loop* uma quantidade fixa de vezes\
   
    ``` r
    for(i in 1:10) {
            print(i)
     }
    ```

------------------------------------------------------------------------

### Estruturas de controle:

-   while: executa um *loop* enquanto uma condição for verdade

    ``` r

    conte <- 0
     while(conte < 10) {
            print(conte)
            conte <- conte + 1
     }
    ```

------------------------------------------------------------------------

### Estruturas de controle:

-   repeat: executa um *loop* infinito

-   break: termina a execução de um *loop*

    ``` r
     x0 <- 1
     tol <- 1e-8
     repeat {
            x1 <- computeEstimate()
            if(abs(x1 - x0) < tol) {
                    break
            } else {
                    x0 <- x1
            } 
    }
    ```

------------------------------------------------------------------------

::: {.callout-note style="background-color:#dceeff;"}
1e-8 refere-se a *notação científica*\
1e-8 = 1 x 10\^(-8) = 0,00000008
:::

------------------------------------------------------------------------

### Estruturas de controle:

-   next: pula interações de um *loop*

    ``` r

     for(i in 1:100) {
     if(i <= 20) {
     ## Pula as primeiras 20 iterações
     next 
            }
     ## Faz algo aqui...
     }
    ```

---

### Estruturas de controle:

-   return: termina a execução de uma função

```r      

myFunction <- function(x) {
  if (x > 0) {
    return(sqrt(x))
  } else {
    return(NA)
  }
}
```

------------------------------------------------------------------------

::: {.callout-tip style="background-color:#e6ffe6;"}
Sempre que usar estruturas de controle, fique atento aos { }, que iniciam e fecham seu conteúdo.
:::

---

### Funções

-   Também são um tipo de objeto

    -   No lugar de valores, contém código

    -   O código é armazenado em um formato que permite seu uso facilmente, em novas situações

-   São construídas estabelecendo-se seus **argumentos**

---

### Funções

```{r}

# Podemos criar nossas próprias funções
# Os argumentos podem ser obrigatórios ou opcionais, que já vem com um default

myFunction <- function(arg1, arg2 = 5) {
  # Corpo da função
  result <- arg1 + arg2
  return(result)
}
```

-   A função *arg( )* permite ver os argumentos de uma função

    ```{r, echo = TRUE, eval = FALSE}
    # Observando os argumentos de uma função

    args(round)
    ```

------------------------------------------------------------------------

-   Podemos chamar uma função utilizando seus argumentos por posição ou nome

    ```{r, echo = TRUE}
    # Chamando a função por posição
    myFunction(10, 3)  # arg1 = 10, arg2 = 3

    # Chamando a função por nome
    myFunction(arg2 = 4, arg1 = 7)  # arg1 = 7, arg2 = 4
    ```

Boa prática: escrever os nomes dos argumentos a partir do 3º.



# O que precisamos saber sobre IA {background-color="#2C3E50"}

---

::: incremental
-   Estamos na era da ANI (IA Restrita). A AGI (Generalizada) está longe, e a Super IA, é mito?
-   IA Generativa (IAGen) é um dos tipos, a que teve o impulso recente
-   Você deve usar a IA para trabalhar com você, e não por você
-   A IA Gen pode se tornar seu melhor amigo consultor para análises e pesquisa, mas você é o responsável! (Uso ético)
    -   **Pergunta-chave 1** Posso descrever ao Editor da revista como usei a IA?
    -   **Pergunta-chave 2** Existe alguma possibilidade de vazamento de dados sensíveis?
:::

# O que precisamos saber sobre IA

---

::: incremental
-   Você deve utilizar diferentes IAs, pois cada uma tende a ser melhor em algo\
    ChatGPT, Copilot Microssot, Deepseek, Gemini, Claude...
-   Você pode integrar IA no seu editor ou usar o web site
-   Existem diferentes formas de integrar IA no editor
    -   Pacotes
    -   Co-pilot - 'code completition'
-   As possibilidades de integração da IA depende do editor

:::

# O que precisamos saber sobre IA

---

::: incremental
-   IA Generativa cria linguagem usando probabilidade, não lógica ou raciocínio
-   IA funcionam melhor com contexto (Engenharia de Contexto)
-   A forma de pergunta é relevante (Engenharia de Prompt)
-   CRAFT (Context, Role, Action, Format, Tone)
:::

# O que precisamos saber sobre IA