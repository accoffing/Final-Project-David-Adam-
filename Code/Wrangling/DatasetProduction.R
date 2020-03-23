library(tidyr)
library(dplyr)

AllIndicators <- read.csv("C:/Users/Adam Coffing/Desktop/WDI/WDIData.csv")

LifeExpectancyPrediction <- Water[,1:4] 

LandInvestigation <- Water[,1:4] 

Water <- filter(AllIndicators, Indicator.Name == "People using at least basic drinking water services (% of population)")
Water2014 <- Water[,59] #2014

Education <- filter(AllIndicators, Indicator.Name == "Compulsory education, duration (years)")
Education2014 <- Education[,59] #2014

TotalGreenhouse <- filter(AllIndicators, Indicator.Name == "Total greenhouse gas emissions (kt of CO2 equivalent)")
TotalGreenhouse2012 <- TotalGreenhouse[,57]

CO2 <- filter(AllIndicators, Indicator.Name == "CO2 emissions (kt)")
CO22014 <- CO2[,59]

Sanitation <- filter(AllIndicators, Indicator.Name == "People using at least basic sanitation services (% of population)")
Sanitation2014 <- Sanitation[,59]

RuralPOP <- filter(AllIndicators, Indicator.Name == "Rural population (% of total population)")
RuralPOP2014 <- RuralPOP[,59]

PopTotal <- filter(AllIndicators, Indicator.Name == "Population, total")
PopTotal2014 <- PopTotal[,59]

PopMale <- filter(AllIndicators, Indicator.Name == "Population, male")
PopMale2014 <- PopMale[,59]

PopFemale <- filter(AllIndicators, Indicator.Name == "Population, female")
PopFemale2014 <- PopFemale[,59]

HealthGDP <- filter(AllIndicators, Indicator.Name == "Current health expenditure (% of GDP)")
HealthGDP2014 <- HealthGDP[,59]

HealthPerCapita <- filter(AllIndicators, Indicator.Name == "Current health expenditure per capita (current US$)")
HealthPerCapita2014 <- HealthPerCapita[,59]

LifeTotal <- filter(AllIndicators, Indicator.Name == "Life expectancy at birth, total (years)")
LifeTotal2014 <- LifeTotal[,59]

LifeMale <- filter(AllIndicators, Indicator.Name == "Life expectancy at birth, male (years)")
LifeMale2014 <- LifeMale[,59]

LifeFemale <- filter(AllIndicators, Indicator.Name == "Life expectancy at birth, female (years)")
LifeFemale2014 <- LifeFemale[,59]

Surviveto65Male  <- filter(AllIndicators, Indicator.Name == "Survival to age 65, male (% of cohort)")
Surviveto65Male2014 <- Surviveto65Male[,59]

Surviveto65Female  <- filter(AllIndicators, Indicator.Name == "Survival to age 65, female (% of cohort)")
Surviveto65Female2014 <- Surviveto65Female[,59]


LifeExpectancyPrediction$Surviveto65Female2014 <- Surviveto65Female2014
LifeExpectancyPrediction$Surviveto65Male2014 <- Surviveto65Male2014
LifeExpectancyPrediction$LifeFemale2014 <- LifeFemale2014
LifeExpectancyPrediction$LifeMale2014 <- LifeMale2014
LifeExpectancyPrediction$LifeTotal2014 <- LifeTotal2014
LifeExpectancyPrediction$HealthPerCapita2014 <- HealthPerCapita2014
LifeExpectancyPrediction$HealthGDP2014 <- HealthGDP2014
LifeExpectancyPrediction$PopFemale2014 <- PopFemale2014
LifeExpectancyPrediction$PopMale2014 <- PopMale2014
LifeExpectancyPrediction$PopTotal2014 <- PopTotal2014
LifeExpectancyPrediction$RuralPOP2014 <- RuralPOP2014
LifeExpectancyPrediction$Sanitation2014 <- Sanitation2014
LifeExpectancyPrediction$CO22014 <- CO22014
LifeExpectancyPrediction$TotalGreenhouse2012 <- TotalGreenhouse2012
LifeExpectancyPrediction$Education2014 <- Education2014
LifeExpectancyPrediction$Water2014 <- Water2014

write.csv(LifeExpectancyPrediction, "C:/Users/Adam Coffing/Desktop/LifeExpectancyPrediction.csv")

LifeExpectancyPrediction2 <- LifeExpectancyPrediction[-c(1:47, 51,52,57,69,75,84,87,98,103,109,113,117,123,125,127,134,142,151,153,161,162,165,169,172,176,178,180,185,188,194,198,206,212,220,224,226,229,231,237,248,249,257,260,261,70,73,79,81,114,182,184,186,191,196,200,223),1:20]

write.csv(LifeExpectancyPrediction2, "C:/Users/Adam Coffing/Desktop/LifeExpectancyPrediction2.csv")
#______________________________________________________________________________________________________

ArableLand <- filter(AllIndicators, Indicator.Name == "Arable land (% of land area)")
ArableLand2014 <- ArableLand[,59]

AverageRain <- filter(AllIndicators, Indicator.Name == "Average precipitation in depth (mm per year)")
AverageRain2014 <- AverageRain[,59]

ForestLand <- filter(AllIndicators, Indicator.Name == "Forest area (sq. km)")
ForestLand2014 <- ForestLand[,59]

AgriculturalLand <- filter(AllIndicators, Indicator.Name == "Agricultural land (% of land area)")
AgriculturalLand2014 <- AgriculturalLand[,59]

RuralLand <- filter(AllIndicators, Indicator.Name == "Rural land area (sq. km)")
RuralLand2010 <- RuralLand[,55]

UrbanLand <- filter(AllIndicators, Indicator.Name == "Urban land area (sq. km)")
UrbanLand2010 <- UrbanLand[,55]

PermCropLand <- filter(AllIndicators, Indicator.Name == "Permanent cropland (% of land area)")
PermCropLand2014 <- PermCropLand[,59]

TotalLand <- filter(AllIndicators, Indicator.Name == "Land area (sq. km)")
TotalLand2014 <- TotalLand[,59]

PopDensity <- filter(AllIndicators, Indicator.Name == "Population density (people per sq. km of land area)")
PopDensity2014 <- PopDensity[,59]


LandInvestigation$AverageRain2014 <- AverageRain2014
LandInvestigation$ForestLand2014 <- ForestLand2014
LandInvestigation$AgriculturalLand2014 <- AgriculturalLand2014
LandInvestigation$RuralLand2010 <- RuralLand2010
LandInvestigation$UrbanLand2010 <- UrbanLand2010
LandInvestigation$PermCropLand2014 <- PermCropLand2014
LandInvestigation$TotalLand2014 <- TotalLand2014
LandInvestigation$PopDensity2014 <- PopDensity2014
LandInvestigation$LifeTotal2014 <- LifeTotal2014





