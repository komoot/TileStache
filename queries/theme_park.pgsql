SELECT way AS __geometry__ 
        , name 
        , tourism 
FROM planet_osm_polygon 
WHERE tourism='theme_park'
