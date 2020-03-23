library(dplyr)
library(tidyr)
HDIGDI <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/HDIFull.csv")

str(HDIGDI)

HDIGDI$Country <- as.character(HDIGDI$Country)

HDIGDI[22,"Country"] <- "Bolivia"
HDIGDI[30,"Country"] <- "Ivory Coast"
HDIGDI[41,"Country"] <- "Republic of the Congo"
HDIGDI[42,"Country"] <- "Democratic Republic of the Congo"
HDIGDI[82,"Country"] <- "Iran"
HDIGDI[77,"Country"] <- "Hong Kong"
HDIGDI[93,"Country"] <- "Korea"
HDIGDI[96,"Country"] <- "Laos"
HDIGDI[116,"Country"] <- "Moldova"
HDIGDI[133,"Country"] <- "Palestine"
HDIGDI[172,"Country"] <- "Tanzania"
HDIGDI[174,"Country"] <- "North Macedonia"
HDIGDI[190,"Country"] <- "Venezuela"
HDIGDI[191,"Country"] <- "Vietnam"
HDIGDI[143,"Country"] <- "Russia"

HDIGDI2 <- HDIGDI[-c(7,42,52,97,160,164,192),]
 
write.csv(HDIGDI2, "UpdatedHDIFull.csv")

 
