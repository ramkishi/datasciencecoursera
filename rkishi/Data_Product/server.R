#### Course Project of Developing Data Products
#### Created By : Ram Prashad Kisi
#### Note : Shiny Applicaton 
#### File :server.R

library(shiny)
data(EuStockMarkets)
shinyServer(
  function(input, output) {
    output$plot_variable <- renderPlot({
      plot(EuStockMarkets[,input$idx], main = input$idx, xlab = "Time", ylab = "Index Level", type = "l", col="red",lwd="3")
      out_median <- median(EuStockMarkets[,input$idx])
      abline(h=out_median, col = "Green",lwd="5")
      output$out_median <- renderPrint(out_median)
    })
  }
)