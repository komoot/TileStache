SELECT name 
        ,  way AS __geometry__ 
        ,  way_area 
FROM planet_osm_polygon 
WHERE building IS NOT NULL 
    AND building NOT IN ('no' 
        , 'station' 
        , 'supermarket')
