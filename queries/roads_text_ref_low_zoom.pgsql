SELECT way AS __geometry__ 
        , highway 
        , ref 
        , char_length(ref) AS length 
FROM planet_osm_roads 
WHERE highway IN ('motorway' 
        , 'trunk' 
        , 'primary' 
        , 'secondary') 
    AND ref IS NOT NULL 
    AND char_length(ref) BETWEEN 1 
    AND 8
