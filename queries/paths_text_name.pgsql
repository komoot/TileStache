SELECT way AS __geometry__ 
        ,  highway 
        ,  name 
FROM planet_osm_line 
WHERE highway IN ('bridleway' 
        ,  'footway' 
        ,  'cycleway' 
        ,  'path' 
        ,  'track' 
        ,  'steps') 
    AND name IS NOT NULL
