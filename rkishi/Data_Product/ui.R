#### Course Project of Developing Data Products
#### Created By : Ram Prashad Kisi
#### Note : Shiny Applicaton 
#### File :ui.R

library(shiny)
data(EuStockMarkets)
shinyUI(
  fluidPage(
    titlePanel("Daily Closing Prices of Major European Stock Indices,1991-1998"),
    h3("Description"),
    h4("Contains the daily closing prices of major European stock indices: 
       Germany DAX (Ibis), Switzerland SMI, France CAC, and UK FTSE. 
       The data are sampled in business time, i.e., weekends and holidays are omitted.,"),
    sidebarLayout(
        sidebarPanel(
        selectInput("idx", "Name of Index:",
                    choices=colnames(EuStockMarkets)),
        hr(),
        helpText("Select the index DAX, SMI, CAC or FTSE")),
        mainPanel(
        plotOutput("plot_variable"),
        h4("Median"),
        verbatimTextOutput("out_median")
      ))))