library(shiny)

ui  <- fluidPage( 
  titlePanel("Residential Fire Dearth each year"),
  sidebarPanel(
      selectInput(inputId = "Year", 
                  label = "Select the year you are interested in",
                  c("2006","2007","2008","2009","2010","2011","2012","2013","2014","2015")),
      radioButtons("Radio", label = "Select the color you like", c("Green","Red","Blue", selected ="Green"))
      ),
      mainPanel(
        dataTableOutput("dt2006"),
        dataTableOutput("dt2007"),
        dataTableOutput("dt2008"),
        dataTableOutput("dt2009"),
        dataTableOutput("dt2010"),
        dataTableOutput("dt2011"),
        dataTableOutput("dt2012"),
        dataTableOutput("dt2013"),
        dataTableOutput("dt2014"),
        dataTableOutput("dt2015"),
      
        plotOutput("plot2006"),
        plotOutput("plot2007"),
        plotOutput("plot2008"),
        plotOutput("plot2009"),
        plotOutput("plot2010"),
        plotOutput("plot2011"),
        plotOutput("plot2012"),
        plotOutput("plot2013"),
        plotOutput("plot2014"),
        plotOutput("plot2015"))
          )

server <- function(input, output) {
  
  output$plot2006 <- renderPlot({
    if (input$Year == "2006"){
      hist(x= as.numeric(expand2006$ID), breaks = nrow(ttdeath2006), col = input$Radio, main = "Histogram of 2006 Yearly Death", xlab = "State ID")
    }
    else{
      return()
    }
  })
   output$dt2006 <- renderDataTable({
     if (input$Year == "2006"){
       return(ttdeath2006) 
     }
     else{
       return()
     }
     })
   
   output$plot2007 <- renderPlot({
     if (input$Year == "2007"){
       hist(x= as.numeric(expand2007$ID), breaks = nrow(ttdeath2007), col = input$Radio, main = "Histogram of 2007 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2007 <- renderDataTable({
     if (input$Year == "2007"){
       return(ttdeath2007)     }
     else{
       return()
     }
   })
   output$plot2008 <- renderPlot({
     if (input$Year == "2008"){
       hist(x= as.numeric(expand2008$ID), breaks = nrow(ttdeath2008), col = input$Radio, main = "Histogram of 2008 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2008 <- renderDataTable({
     if (input$Year == "2008"){
       return(ttdeath2008)     }
     else{
       return()
     }
   })
   output$plot2009 <- renderPlot({
     if (input$Year == "2009"){
       hist(x= as.numeric(expand2009$ID), breaks = nrow(ttdeath2009), col = input$Radio, main = "Histogram of 2009 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2009 <- renderDataTable({
     if (input$Year == "2009"){
       return(ttdeath2009)     }
     else{
       return()
     }
   })
   output$plot2010 <- renderPlot({
     if (input$Year == "2010"){
       hist(x= as.numeric(expand2010$ID), breaks = nrow(ttdeath2010), col = input$Radio, main = "Histogram of 2010 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2010 <- renderDataTable({
     if (input$Year == "2010"){
       return(ttdeath2010)     }
     else{
       return()
     }
   })
   output$plot2011 <- renderPlot({
     if (input$Year == "2011"){
       hist(x= as.numeric(expand2011$ID), breaks = nrow(ttdeath2011), col = input$Radio, main = "Histogram of 2011 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2011 <- renderDataTable({
     if (input$Year == "2011"){
       return(ttdeath2011)     }
     else{
       return()
     }
   })
   output$plot2012 <- renderPlot({
     if (input$Year == "2012"){
       hist(x= as.numeric(expand2012$ID), breaks = nrow(ttdeath2012), col = input$Radio, main = "Histogram of 2012 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2012 <- renderDataTable({
     if (input$Year == "2012"){
       return(ttdeath2012)     }
     else{
       return()
     }
   })
   output$plot2013 <- renderPlot({
     if (input$Year == "2013"){
       hist(x= as.numeric(expand2013$ID), breaks = nrow(ttdeath2013), col = input$Radio, main = "Histogram of 2013 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2013 <- renderDataTable({
     if (input$Year == "2013"){
       return(ttdeath2013)     }
     else{
       return()
     }
   })
   output$plot2014 <- renderPlot({
     if (input$Year == "2014"){
       hist(x= as.numeric(expand2014$ID), breaks = nrow(ttdeath2014), col = input$Radio, main = "Histogram of 2014 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2014 <- renderDataTable({
     if (input$Year == "2014"){
       return(ttdeath2014)     }
     else{
       return()
     }
   })
   output$plot2015 <- renderPlot({
     if (input$Year == "2015"){
       hist(x= as.numeric(expand2015$ID), breaks = nrow(ttdeath2015), col = input$Radio, main = "Histogram of 2015 Yearly Death", xlab = "State ID")
     }
     else{
       return()
     }
   })
   output$dt2015 <- renderDataTable({
     if (input$Year == "2015"){
       return(ttdeath2015)     }
     else{
       return()
     }
   })
}

shinyApp(ui = ui, server = server)

