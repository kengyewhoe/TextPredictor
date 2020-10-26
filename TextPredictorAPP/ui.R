#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
    fluidPage(
        titlePanel("NATURAL LANGUAGE PROCESSING TO PREDICT WORDS"),
        sidebarLayout(
            sidebarPanel(
                helpText("ENTER A WORD, TEXT OR A SENTENCE TO PREVIEW NEXT WORD PREDICTION"),
                hr(),
                textInput("inputText", "ENTER THE TEXT / WORD / SENTENCE HERE",value = ""),
                hr(),
                helpText("1 - AFTER THE TEXT INPUT THE PREDICT NEXT WORD WILL BE DISPLAYED.", 
                         hr(),
                         "2 - YOU HAVE TO ENTER A PARTIALLY TEXT /SENTENCE TO SHOW THE NEXT WORD PREDICTION.",
                         hr(),
                         "3 - THE FORWARD WORD IS SHOWED AT THE PREDICT NEXT WORD TEXT BOX ON THE RIGHT SIDE"),
                hr(),
                hr()
            ),
            mainPanel(
                h2("FOLLOW THE PREDICT NEXT WORD AT THIS BOX"),
                verbatimTextOutput("prediction"),
                strong("WORD / TEXT / SENTENCE ENTERED:"),
                strong(code(textOutput('sentence1'))),
                br(),
                strong("USING SEARCH AT N-GRAMS TO SHOW NEXT WORD:"),
                strong(code(textOutput('sentence2'))),
                hr(),
                h1("About me:"),
            
                h4("I'm a third year Mechanical Engineering student trying to learn how to use R.
                       Programming is something I enjoy alot but is not really taught in school so i've
                       taken the opportunity to learn from Coursera. The source code will be shared on github soon :)"),
                )
            )
        )
    )


