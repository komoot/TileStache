SELECT way AS __geometry__ 
        , ref 
        , name 
FROM planet_osm_point 
WHERE highway='motorway_junction'
