SELECT way AS __geometry__ 
        ,  barrier 
FROM planet_osm_line 
WHERE barrier IS NOT NULL
