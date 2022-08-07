### Mapa
```{r}
library(leaflet)
salvador$NumCoordESub <- salvador$NumCoordESub/100

salvador$NumCoordNSub <- salvador$NumCoordNSub/100

renderLeaflet({
  salvador %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(lng = salvador$NumCoordESub, lat=salvador$NumCoordNSub, popup="Placa Solar")
})

```

salvador |> 
  e_charts(NumCoordESub) |> 
  e_geo(roam = TRUE,
        boundingCoords = list(
          c(-38.8, -12.7),
          c(-38, -13)
        )) |> 
  e_scatter(NumCoordNSub, coord_system = "geo", symbol_size = 5) %>% 
  e_visual_map(scale = e_scale)


salvador |> 
  e_charts(NumCoordESub) |> 
  e_leaflet() |>
  e_leaflet_tile() |>  
  e_scatter(NumCoordNSub, coord_system = "leaflet")