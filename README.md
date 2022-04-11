# The Impact of Transitioning to ZEV's on California's Natural Gas Emmissions
Final Project - Exploring the emission impacts 

## Introduction

### *Selected Topic*: 
For our project we will preform a data analysis on the impact of increased electric vehicle charging on California's natural gas usage.

### *Reason Why Topic Was Selected:*
California has set a goal of getting 5 million electric vehicles (EVs) on the road by 2030. While this electrficiation will move the state towards it's climate change goals, if residents charge electric vehicles at night when the grid is more natural gas intensive, this EV charging can impact California's natural gas emissions. We chose this subject for several reasons. First on a macro level the topic has direct pertinence to the effects on our living environment, pollutant levels and greenhouse effects . More importantly the topic is significant to a particular program goals that is trying to be implemented in California and this predictive model should produce analysis that would effect policy change and implementation.  

### *Description of Source of Data:*
California has been at the forefront of renewable energy in the United States and has made significant progress. There has been a significant amount of data relevant to ZEVs collected by [California Energy Commission (CEC)](https://www.energy.ca.gov/) in the form of raw data and reports. We also wanted to look at other sources and goverment sites that could allow us to measure the natural gas intakes in the state over the last several years. At first, we found a great amount of data regarding demand values through the CAISO API, (https://developer.caiso.com/) but opted for a different table and set of data collected by the site(http://www.caiso.com/TodaysOutlook/Pages/supply.html). We also used a great deal of information for calculating our demand values from the National Bureau of Economic Research working papers regarding EVs (pls see reference folder). We also used several other sites and resources that we added to our folder. 

### *Questions We Hope to Answer:*
- How does increased use of electric vehicle impact natural gas consumption in California?

## Our Process


### *Description of Data Exploration:*
Our search process for the data was difficult at first due to data requiring payment to access. So, we did a lot of research on our topic to gain a better understanding and find reliable sources that can offer the data that we need. After our research, we found a great deal of data in the supply and demand section of [California ISO]( https://www.caiso.com/todaysoutlook/Pages/index.html) which we collected and have included our scape code along side. We had looked for the EV demand in MW over the last several years, but to this day no organization has actually sucessfully been able to collect such data or created a structure to do so. We agreed to make the best attempt constructing a demand value using basic calculations for the taking the averages of milage range of the most popular makes based on DMV registration, battery of the EV and Level 2 home charger using references such as [Sun County Highway](https://suncountryhighway.ca/ev-charge-times/) and tables from InsideEVs site (https://insideevs.com/reviews/344001/compare-evs/). All data and tables were derived from webscraping. At the end we found a study by the National Bureau of Economic Research working paper "Low Energy: Estimating Electric Vehicle Electricity Use"(resource file). This study gave us a demand parameter that we applied to number of DMV registered EVs in California published by the California Energy Commission (https://www.energy.ca.gov/data-reports/energy-insights/zero-emission-vehicle-and-infrastructure-statistics).
 
### *Project Outline:*

The Presention slides are done through Canva and formatted to a pdf that is available in our main branch. Please use link to see presentation notes.
https://www.canva.com/design/DAE9KiRg2E8/rpZcrZ1cfZsLencKyDMamA/view?utm_content=DAE9KiRg2E8&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton


## Machine Learning Model 

### *Description of Preliminary Data Preprocessing:*

Before entering our data into our model, we had to do several things for pre-processing.

First, we dropped several columns that were not relevant to our machine learning analysis. Next, we added into our data a column that represented EV charging in demand for the three years we got our data, for specific five minute intervals for the most common charging time, from 10pm to 6am. Then, we had to create a function to turn all of our date values into a relative value indicating day of year so we could make it into an integer and feed it into our model. Then we did the same thing for hours and minutes, splitting them up and putting them into integer values, for example for hours 1-24.  Next, I created a graph with all of our variables to see if there were any outliers or anything wrong with the data. The first time we ran our machine learning model, we got a very low accuracy so we created a pair plot function to see where improvements could be made to our pre processing. I also made a heatmap to look at the strength of the correlations between our variables. To deal with the NaN values that we had, we used SimpleImputer to replace the values with averages instead of zeros or dropping the column altogether. 

 
### *Description of Preliminary Feature:*

### *Description of Training:*
 We split our data into training and testing. We retrieved the independent and dependent variables and since we have only one feature and fed them into our linear regression model. We use scikit learn to import the linear regression model. We fit the model on the training data and predict the values for the testing data. We use R2 score to measure the accuracy of our model, which ended up being around 56%. 

### *Explanation of Model Choice:*

We chose a multivariate linear regression because a MLR is a type of supervised machine learning used to understand 
the relationship between two or more independent variables and one dependent variable. We need to predict continuous variable, which linear does and deal with our multiple features. For us, the independent variables were our total demand sum variables and our time variables. The dependent variable was natural gas. By using a  multivariate linear regression, we could understand the strength of the relationship between our independent and dependent variables and we could predict the value of our dependant variable (natural gas) at a certain level for a set of independent variables.


<img width="408" alt="Screen Shot 2022-03-31 at 4 52 18 PM" src="https://user-images.githubusercontent.com/92963227/161167936-7e899377-c352-47f1-82a4-ae5b0797df0f.png">
