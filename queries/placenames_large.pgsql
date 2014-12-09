SELECT way AS __geometry__ 
        , place 
        , name 
        , ref 
FROM planet_osm_point 
WHERE place IN ('country' 
        , 'state')
