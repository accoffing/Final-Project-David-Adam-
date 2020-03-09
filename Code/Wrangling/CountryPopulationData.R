library(dplyr)
population <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Originals/country_population_1960-2016.csv")


names(population) <- sub("^ï..Country.Name$", "Country", names(population))
names(population) <- sub("^Country.Code$", "CountryCode", names(population))

str(population)

population$Country <- as.character(population$Country)
population[22, "Country"] <- "Bahamas"
population[40, "Country"] <- "Ivory Coast"
population[42, "Country"] <- "Democratic Republic of Congo"
population[43, "Country"] <- "Republic of Congo"
population[66, "Country"] <- "Egypt"
population[78, "Country"] <- "Micronesia"
population[85, "Country"] <- "Gambia"
population[86, "Country"] <- "Guinea Bissau"
population[95, "Country"] <- "Hong Kong"
population[111, "Country"] <- "Iran"
population[125, "Country"] <- "South Korea"
population[128, "Country"] <- "Laos"
population[132, "Country"] <- "Saint Lucia"
population[145, "Country"] <- "Macao"
population[146, "Country"] <- "Saint Martin"
population[156, "Country"] <- "Macedonia"
population[192, "Country"] <- "North Korea"
population[195, "Country"] <- "Gaza"
population[201, "Country"] <- "Russia"
population[218, "Country"] <- "Saint Thomas and Prince"
population[224, "Country"] <- "Saint Martin"
population[226, "Country"] <- "Syria"
population[236, "Country"] <- "Timor Leste"
population[252, "Country"] <- "Saint Vincent and the Grenadines"
population[253, "Country"] <- "Venezuela"
population[255, "Country"] <- "Virgin Islands"
population[261, "Country"] <- "Yemen"

population <-population[-c(35, 48, 60:64,67,72,73,94,97,101:104, 106, 109, 127, 133, 
                         134, 135, 138, 139, 141, 152, 155, 160, 169, 180, 182, 190, 196, 197, 203, 214, 
                         216, 217, 229, 230, 235, 237, 239, 240, 248),-c(3,4)]
#population <- na.omit(population)
#population %>% summarise_all(funs(sum(is.na(.))/n()))
#Trend_population <- population %>% gather(5:61, key = "year", value = "Total") %>% group_by(year) %>% na.omit()%>%

write.csv(population, "CountryPopulationUpdated.csv")