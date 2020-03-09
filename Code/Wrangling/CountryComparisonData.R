library(dplyr)


GDI <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/gender_development.csv")

HDI <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/human_development.csv")

HDIfull <- merge(x = HDI, y = GDI, by = "Country")

New <- select(HDIfull, -c(5,8,15,16))
write.csv(HDIfull, "HDIFull.csv")
New$HDIGDI = "1"

New2 <- select(New, c(1,17))

EconomicFreedom <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/economic_freedom_index2019_data.csv")
EconomicFreedom$EconomicFreedom = "1"
EconomicFreedom2 <- select(EconomicFreedom, c(2,35))
names(EconomicFreedom2)[names(EconomicFreedom2) == "Country.Name"] <- "Country"

Happiness_2015 <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/2015_happiness.csv")
Happiness_2015$Happiness = "1"
Happiness_2015v2 <- select(Happiness_2015, c(1,13))

AlcoholLifeExpectancy <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/drinks.csv")
AlcoholLifeExpectancy$AlcoholLifeExpectancy = "1"
AlcoholLifeExpectancy2 <- select(AlcoholLifeExpectancy, c(1,6))
names(AlcoholLifeExpectancy2)[names(AlcoholLifeExpectancy2) == "country"] <- "Country"

LifeExpectancy19602016 <- read.csv("C:/Users/Adam Coffing/Desktop/Working Directory/life_expectancy_1960-2016.csv")
LifeExpectancy19602016$LifeExpectancy19602016 = "1"
LifeExpectancy19602016v2 <- select(LifeExpectancy19602016, c(1,62))
names(LifeExpectancy19602016v2)[names(LifeExpectancy19602016v2) == "ï..Country.Name"] <- "Country"

Start <- merge(x= New2, y = EconomicFreedom2, by = "Country", all=TRUE)
Start2 <- merge(x= Start, y = Happiness_2015v2, by = "Country", all=TRUE)
Start3 <- merge(x= Start2, y = AlcoholLifeExpectancy2, by = "Country", all=TRUE)
CountryComparison <- merge(x= Start3, y = LifeExpectancy19602016v2, by = "Country", all=TRUE)
write.csv(CountryComparison, "CountryComparisonHDIGDI.csv")

Start <- merge(x= EconomicFreedom2, y = New2, by = "Country", all=TRUE)
Start2 <- merge(x= Start, y = Happiness_2015v2, by = "Country", all=TRUE)
Start3 <- merge(x= Start2, y = AlcoholLifeExpectancy2, by = "Country", all=TRUE)
CountryComparison <- merge(x= Start3, y = LifeExpectancy19602016v2, by = "Country", all=TRUE)
write.csv(CountryComparison, "CountryComparisonEconomicFreedom.csv")

Start <- merge(x= Happiness_2015v2, y = New2, by = "Country", all=TRUE)
Start2 <- merge(x= Start, y = EconomicFreedom2, by = "Country", all=TRUE)
Start3 <- merge(x= Start2, y = AlcoholLifeExpectancy2, by = "Country", all=TRUE)
CountryComparison <- merge(x= Start3, y = LifeExpectancy19602016v2, by = "Country", all=TRUE)
write.csv(CountryComparison, "CountryComparisonHappiness.csv")

Start <- merge(x= AlcoholLifeExpectancy2, y = New2, by = "Country", all=TRUE)
Start2 <- merge(x= Start, y = Happiness_2015v2, by = "Country", all=TRUE)
Start3 <- merge(x= Start2, y = EconomicFreedom2, by = "Country", all=TRUE)
CountryComparison <- merge(x= Start3, y = LifeExpectancy19602016v2, by = "Country", all=TRUE)
write.csv(CountryComparison, "CountryComparisonAlcoholLifeExpectancy.csv")

Start <- merge(x= LifeExpectancy19602016v2, y = New2, by = "Country", all=TRUE)
Start2 <- merge(x= Start, y = Happiness_2015v2, by = "Country", all=TRUE)
Start3 <- merge(x= Start2, y = AlcoholLifeExpectancy2, by = "Country", all=TRUE)
CountryComparison <- merge(x= Start3, y = EconomicFreedom2, by = "Country", all=TRUE)
write.csv(CountryComparison, "CountryComparisonLifeExpectancy19602016.csv")

