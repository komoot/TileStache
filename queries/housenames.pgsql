SELECT way AS __geometry__ 
        , "addr:housename" 
FROM planet_osm_polygon 
WHERE "addr:housename" IS NOT NULL 
    AND building IS NOT NULL 
UNION SELECT way AS __geometry__ 
        , "addr:housename" 
FROM planet_osm_point 
WHERE "addr:housename" IS NOT NULL
