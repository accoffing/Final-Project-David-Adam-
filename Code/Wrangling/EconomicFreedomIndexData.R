library(dplyr)
library(tidyr)

efi <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Originals/economic_freedom_index2019_data.csv")

str(efi)

efi$Country <- as.character(efi$Country)
efi[38, "Country"] <- "Democratic Republic of Congo"
efi[39, "Country"] <- "Republic of Congo"
efi[41, "Country"] <- "Ivory Coast"
efi[69, "Country"] <- "Guinea Bissau"
efi[73, "Country"] <- "Hong Kong"
efi[89, "Country"] <- "North Korea"
efi[90, "Country"] <- "South Korea"
efi[94, "Country"] <- "Laos"
efi[103, "Country"] <- "Macao"
efi[144, "Country"] <- "Saint Thomas and Prince"
efi[167, "Country"] <- "Timor Leste"

write.csv(efi, "EconomicFreedomIndexUpdated.csv")
