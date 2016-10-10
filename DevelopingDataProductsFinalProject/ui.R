library(shiny)

shinyUI(
  fluidPage(
    title = "Car Mileage Prediction using MTcars Database",
    fluidRow(
      column(width = 2,
             numericInput("id4","Rear Axle Ratio",2.5,min = 2,max = 5,step = 0.1),
             numericInput("id5","Weight",3,min = 1,max = 6,step = 0.1),
             numericInput("id6","quarter mile time",20,min = 10,max = 30,step = 0.1),
             numericInput("id2","Displacement",100,min = 50,max = 600,step = 10),
             numericInput("id3","Horse Power",130,min = 50,max = 350,step = 10)
      ),
      column(width = 3,
             radioButtons("id7","Engine Type",c(
               "V" = "V",
               "S" = "S"
             )),
             radioButtons("id8","Transmission Type",c(
               "Automatic" = "A",
               "Manual" = "M"
             ))  
      ),
      column(width = 4,
             sliderInput("id1","Number of Cylinders",4,8,6,step = 1),
             sliderInput("id9","Number of Gears",3,5,4,step = 1),
             sliderInput("id10","Number of Carburetors",1,8,5,step = 1)     
      ),
      column(width = 4, offset = 5,
             br(),
             actionButton("button1","Predict Mileage")
      ),
      column(width = 5, offset = 5,
             br(),
             actionButton("button2","Add New Record")
      ),
      column(width = 5, offset = 6,
             textOutput("ActionDone")
      ),
      column(width = 6,
        helpText(a("Click Here For Documentation", href = "https://sairampraneeth.shinyapps.io/Documentation/"))
      ),
      mainPanel(
             h1("Mileage Prediction"),
             textOutput("predictedvalue")
      )
    )
  )
)