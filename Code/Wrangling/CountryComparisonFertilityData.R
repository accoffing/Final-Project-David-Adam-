FRD <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Updated/FertilityRateUpdated.csv")
CPD <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Updated/CountryPopulationUpdated.csv")

FRCPD <- merge(x=CPD, y=FRD, by="Country")
FRCPD$FRCPD = "1" 
temp <- select(FRCPD, c(1,120))

efi <- read.csv("D:/Documents/Data Science/Final Project DSO110/Final-Project-David-Adam-/Updated/EconomicFreedomIndexUpdated.csv")
efi$efi = "1"
efi2 <- select(efi, c(3,36))

CountryComparisonFertility <- merge(x=temp, y=efi2, by = "Country", all=TRUE)
write.csv(CountryComparisonFertility, "CountryComparisonFertility.csv")
