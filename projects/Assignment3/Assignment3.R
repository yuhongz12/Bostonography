# Boston police district zone
library(sf)
library(PROJ)
library(tidyverse)

map <- st_read("Police_Districts.shp")
data <- read.csv("bostonShooting.csv", stringsAsFactors = FALSE)

ggplot() + geom_sf(data = map)

tableData <- table(data$District)
tableData

tableData1 <- log(as.table(tableData))
tableData1 

ggplot() + geom_sf(data = map) + aes(fill=tableData)


ggplot() + geom_sf(data = map) + aes(fill=tableData1)
