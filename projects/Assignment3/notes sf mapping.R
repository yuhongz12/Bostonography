library(rgdal)
library(broom)
library(ggplot2)
library(tidyverse)


setwd("~/Downloads/esm-244-lab-1-master")

cal_spdf <- readOGR( 
  dsn= ".", 
  layer="CA_Counties_TIGER2016",
  verbose=FALSE
)

ca_counties <- tidy(cal_spdf, region = "NAME")

ggplot() +
  geom_polygon(data = ca_counties, aes( x = long, y = lat, group = group), fill="#69b3a2", color="white") +
  theme_void() 


library(sf)
ca_counties <- st_read(dsn = ".", layer = "CA_Counties_TIGER2016")

ca_pop_inc <- read_csv("ca_pop_inc.csv") %>% 
  rename(NAME = COUNTY)

# Join the two: 
ca_df <- full_join(ca_counties, ca_pop_inc) 

ggplot(ca_df) +
  geom_sf(aes(fill = MedFamilyIncome), color = "white", size = 0.2) +
  scale_fill_gradientn(colors = c("blue","mediumorchid1","orange")) +
  theme_minimal()
