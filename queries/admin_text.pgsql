SELECT way AS __geometry__ 
        ,  name 
        ,  admin_level 
FROM planet_osm_polygon 
WHERE "boundary" = 'administrative' 
    AND admin_level IN ('0' 
        , '1' 
        , '2' 
        , '3' 
        , '4' 
        , '5' 
        , '6' 
        , '7' 
        , '8' 
        , '9' 
        , '10')
