SELECT way AS __geometry__ 
        , aerialway 
FROM planet_osm_line 
WHERE aerialway IS NOT NULL
