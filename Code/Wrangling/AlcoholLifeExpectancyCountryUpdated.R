library(dplyr)
library(tidyr)
AlcoholLifeExpectancy <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/drinks.csv")

names(AlcoholLifeExpectancy)[names(AlcoholLifeExpectancy) == "country"] <- "Country"

str(AlcoholLifeExpectancy)

AlcoholLifeExpectancy$Country <- as.character(AlcoholLifeExpectancy$Country)

AlcoholLifeExpectancy[21,"Country"] <- "Bolivia"
AlcoholLifeExpectancy[42,"Country"] <- "Ivory Coast"
AlcoholLifeExpectancy[39,"Country"] <- "Republic of the Congo"
AlcoholLifeExpectancy[71,"Country"] <- "Guinea Bissau"
AlcoholLifeExpectancy[79,"Country"] <- "Iran"
AlcoholLifeExpectancy[92,"Country"] <- "Laos"
AlcoholLifeExpectancy[111,"Country"] <- "Micronesia"
AlcoholLifeExpectancy[128,"Country"] <- "North Korea"
AlcoholLifeExpectancy[184,"Country"] <- "United Kingdom"
AlcoholLifeExpectancy[171,"Country"] <- "Tanzania"
AlcoholLifeExpectancy[186,"Country"] <- "United States"
AlcoholLifeExpectancy[100,"Country"] <- "Macedonia"
AlcoholLifeExpectancy[112,"Country"] <- "Moldova"
AlcoholLifeExpectancy[173,"Country"] <- "Timor Leste"
AlcoholLifeExpectancy[189,"Country"] <- "Venezuela"
AlcoholLifeExpectancy[158,"Country"] <- "South Korea"



AlcoholLifeExpectancy2 <- AlcoholLifeExpectancy[-c(1,127,40),]

write.csv(AlcoholLifeExpectancy2, "AlcoholLifeExpectancyUpdated.csv")