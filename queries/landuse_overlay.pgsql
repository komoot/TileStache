SELECT way AS __geometry__ 
        , landuse 
        , leisure 
FROM planet_osm_polygon 
WHERE (landuse = 'military') 
    AND building IS NULL
