SELECT way AS __geometry__ 
        ,  highway 
        ,  name 
FROM planet_osm_polygon 
WHERE highway='pedestrian' 
    AND name IS NOT NULL
