Developing Data Products Project Presentation : Predicting Car Mileage using MTCARS Dataset
========================================================
author: Sairam Praneeth Vegesana
date: 
autosize: false

INTRODUCTION
========================================================

- The Shiny App predicts the mileage of a car with the custom input characteristics.

- The Server Script of the Shiny App builds a basic Prediction model using the MTCars Dataset provided within R.

- The App allows the user to check the predicted mileage value and also displays the Variability covered by the Prediction Model.

- Users can also add new cars to the dataset while running the App. Whenever a new Record is added to the dataset, a new prediction model is built on the updated dataset. 

Features
========================================================

<small>Users can input the following characteristics of a Car:
Number of Cylinders(4-8), Displacement(50-600 cu.in.), Horse Power(50-350), Rear Axle Ratio(2-5), Weight(1-6 Mega lbs), Quarter Mile time(10-30 secs), Engine Type(V/S), Transmission Type(0-1/Automatic-Manual), Number of Gears(3-5) and Number of Carburetors(1-8).
He can Then do Two of the following operations:

1.Predict the Mileage of the Car.

2.Add the Car to the existing Dataset which builds a new Prediction Model using the updated Dataset. The Variability of the new Prediction Model differs to that of the old one.</small>

Structure of the MTcars Dataset Used
========================================================

```r
data("mtcars")
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

External Links
========================================================
The link to the Shiny App :
https://sairampraneeth.shinyapps.io/Predicting_Car_Mileage/

The Github Repository of the Project : https://github.com/sairampraneeth/Developing-Data-Products-Final-Project

Documentation : https://sairampraneeth.shinyapps.io/Documentation/
