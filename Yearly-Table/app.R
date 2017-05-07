
library(shiny)
ui <- fluidPage(
  # Application title
  titlePanel("Residential Fire table"),
  selectInput(inputId = "Year",
              label = "Choose a Year",
              c("2006","2007","2008","2009","2010","2011","2012","2013","2014","2015")),
  mainPanel(
    dataTableOutput("table2006"),
    dataTableOutput("table2007"),
    dataTableOutput("table2008"),
    dataTableOutput("table2009"),
    dataTableOutput("table2010"),
    dataTableOutput("table2011"),
    dataTableOutput("table2012"),
    dataTableOutput("table2013"),
    dataTableOutput("table2014"),
    dataTableOutput("table2015")
  )
)

server <- function(input, output) {
  output$table2006 <- renderDataTable({
    if (input$Year == "2006"){return(dat2006)}
    else{
      return()
    }
  })
  output$table2007 <- renderDataTable({
    if (input$Year == "2007"){return(dat2007)}
    else{
      return()
    }
  })
  output$table2008 <- renderDataTable({
    if (input$Year == "2008"){return(dat2008)}
    else{
      return()
    }
  })
  output$table2009<- renderDataTable({
    if (input$Year == "2009"){return(dat2009)}
    else{
      return()
    }
  })
  output$table2010 <- renderDataTable({
    if (input$Year == "2010"){return(dat2010)}
    else{
      return()
    }
  })
  output$table2011 <- renderDataTable({
    if (input$Year == "2011"){return(dat2011)}
    else{
      return()
    }
  })  
  output$table2012 <- renderDataTable({
    if (input$Year == "2012"){return(dat2012)}
    else{
      return()
    }
  }) 
  output$table2013 <- renderDataTable({
    if (input$Year == "2013"){return(dat2013)}
    else{
      return()
    }
  })
  output$table2014 <- renderDataTable({
    if (input$Year == "2014"){return(dat2014)}
    else{
      return()
    }
  })
  output$table2015 <- renderDataTable({
    if (input$Year == "2015"){return(dat2015)}
    else{
      return()
    }
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
