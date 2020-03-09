library(dplyr)
fertility <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Originals/fertility_rate_1960-2016.csv")


names(fertility) <- sub("^ï..Country.Name$", "Country", names(fertility))
names(fertility) <- sub("^Country.Code$", "CountryCode", names(fertility))

str(fertility)

fertility$Country <- as.character(fertility$Country)
fertility[22, "Country"] <- "Bahamas"
fertility[40, "Country"] <- "Ivory Coast"
fertility[42, "Country"] <- "Democratic Republic of Congo"
fertility[43, "Country"] <- "Republic of Congo"
fertility[66, "Country"] <- "Egypt"
fertility[78, "Country"] <- "Micronesia"
fertility[85, "Country"] <- "Gambia"
fertility[86, "Country"] <- "Guinea Bissau"
fertility[95, "Country"] <- "Hong Kong"
fertility[111, "Country"] <- "Iran"
fertility[125, "Country"] <- "South Korea"
fertility[128, "Country"] <- "Laos"
fertility[132, "Country"] <- "Saint Lucia"
fertility[145, "Country"] <- "Macao"
fertility[146, "Country"] <- "Saint Martin"
fertility[156, "Country"] <- "Macedonia"
fertility[192, "Country"] <- "North Korea"
fertility[195, "Country"] <- "Gaza"
fertility[201, "Country"] <- "Russia"
fertility[218, "Country"] <- "Saint Thomas and Prince"
fertility[224, "Country"] <- "Saint Martin"
fertility[226, "Country"] <- "Syria"
fertility[236, "Country"] <- "Timor Leste"
fertility[252, "Country"] <- "Saint Vincent and the Grenadines"
fertility[253, "Country"] <- "Venezuela"
fertility[255, "Country"] <- "Virgin Islands"
fertility[261, "Country"] <- "Yemen"

fertility <-fertility[-c(35, 48, 60:64,67,72,73,94,97,101:104, 106, 109, 127, 133, 
                         134, 135, 138, 139, 141, 152, 155, 160, 169, 180, 182, 190, 196, 197, 203, 214, 
                         216, 217, 229, 230, 235, 237, 239, 240, 248),-c(3,4)]
#fertility <- na.omit(fertility)
#fertility %>% summarise_all(funs(sum(is.na(.))/n()))
#Trend_fertility <- fertility %>% gather(5:61, key = "year", value = "Total") %>% group_by(year) %>% na.omit()%>%

write.csv(fertility, "FertilityRateUpdated.csv")
