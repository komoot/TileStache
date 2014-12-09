SELECT way AS __geometry__ 
        , waterway 
FROM planet_osm_line 
WHERE waterway='river'
