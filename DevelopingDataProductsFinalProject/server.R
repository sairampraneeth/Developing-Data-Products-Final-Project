library(shiny)
data(mtcars)

Dset <- mtcars
PredictionModel <- lm(mpg ~ .,data = Dset)
checker <- TRUE

shinyServer(
  function(input,output){
    printEvent <- eventReactive(input$button1,{
      test <- data.frame(cyl = input$id1,
                         disp = input$id2,
                         hp = input$id3,
                         drat = input$id4,
                         wt = input$id5,
                         qsec = input$id6,
                         vs = switch(input$id7,V = 0,S = 1),
                         am = switch(input$id8,A = 0,M = 1),
                         gear = input$id9,
                         carb = input$id10
      )
      predmod <<- PredictionModel
      print(paste("The Predicted Mileage is",predict(predmod,test),".The current prediction model has a variability coverage of ",round(summary(predmod)$r.squared * 100,2),"Percent"))
    })
    
    observeEvent(input$button2,{
      test <- data.frame(cyl = input$id1,
                         disp = input$id2,
                         hp = input$id3,
                         drat = input$id4,
                         wt = input$id5,
                         qsec = input$id6,
                         vs = switch(input$id7,V = 0,S = 1),
                         am = switch(input$id8,A = 0,M = 1),
                         gear = input$id9,
                         carb = input$id10
      )
      predmod <<- PredictionModel
      pred <- predict(predmod,test)
      newRecord <- data.frame(mpg = pred,test)
      Dset <<- rbind(Dset,newRecord)
      PredictionModel <<- lm(mpg ~ .,data = Dset)
    })
    output$predictedvalue <- renderText({
      printEvent()
    })
    actionDone <- eventReactive(input$button2,{
      print(paste("New Record Added!! Total Number of Records = ",nrow(Dset)))
    })
    output$ActionDone <- renderText({
      actionDone()
    })
  }
)