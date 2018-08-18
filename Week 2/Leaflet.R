library(leaflet)
map <- leaflet() %>% addTiles()

NUH_popup <- makeIcon(
  iconUrl = "http://www.nuhcs.com.sg",
  iconWidth = 30*408/255, iconHeight = 30,
  iconAnchorX = 30*408/255/2, iconAnchorY = 30/2
)

NUH_Icon <- c("<a href= 'http://www.nuhcs.com.sg'>National University Hospital<br>
                        <img src='https://upload.wikimedia.org/wikipedia/commons/c/c0/KRW_Facade2_final.jpg' 
                        width='210' height='132'  alt='NUH' title='NUH'></a>")
map %>%
  addTiles() %>%
  addMarkers(lat=1.293487, lng=103.783304, popup = NUH_Icon)
