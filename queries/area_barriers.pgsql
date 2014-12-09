SELECT way AS __geometry__ 
        , barrier 
FROM planet_osm_polygon 
WHERE barrier IS NOT NULL
