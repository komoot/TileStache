SELECT way AS __geometry__ 
        , "addr:housenumber" 
FROM planet_osm_polygon 
WHERE "addr:housenumber" IS NOT NULL 
    AND building IS NOT NULL 
UNION SELECT way AS __geometry__ 
        , "addr:housenumber" 
FROM planet_osm_point 
WHERE "addr:housenumber" IS NOT NULL
