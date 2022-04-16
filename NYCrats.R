library(tidyverse)
Rat_Sightings$Call.Date <-as.POSIXct(Rat_Sightings$Created.Date, "%m/%d/%Y %H:%M:%S" ,  tz = "EST")

Rats_2019 <- Rat_Sightings%>%
  filter(Call.Date >= as.Date('2019-01-01') & Call.Date <= as.Date('2019-12-31'))

Rats_2020 <- Rat_Sightings%>%
  filter(Call.Date >= as.Date('2020-01-01') & Call.Date <= as.Date('2020-12-31'))
