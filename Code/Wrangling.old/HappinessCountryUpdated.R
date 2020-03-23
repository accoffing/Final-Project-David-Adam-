library(dplyr)
library(tidyr)
Happiness <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/2015_happiness.csv")

str(Happiness)

Happiness$Country <- as.character(Happiness$Country)

Happiness[120,"Country"] <- "Democratic Republic of the Congo"
Happiness[139,"Country"] <- "Republic of the Congo"
Happiness[91,"Country"] <- "Somalia"
Happiness[108,"Country"] <- "State of Palestine"


Happiness2 <- Happiness[-c(66,47),]
Happiness2 <- Happiness2[,-c(2)]

write.csv(Happiness2, "HappinessUpdated.csv")