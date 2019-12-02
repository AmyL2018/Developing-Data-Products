
---
title: "Data product Leaflet Map"
author: "Yimin Liu"
date: "11/24/2019"
output:  html_document
---



```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


##  Leaflet map webpage
Create a leaflet map object.
```{r maps}
library(leaflet)
map <- leaflet() %>% addTiles()
```



Add the marker to the map and display the map.
```{r}

map %>%
   addTiles() %>%
    addMarkers(lng=174.768, lat=-36.852, popup="This is my school")
```