SELECT way AS __geometry__ 
        , admin_level 
FROM planet_osm_roads 
WHERE "boundary"='administrative' 
    AND admin_level IN ('0' 
        , '1' 
        , '2' 
        , '3' 
        , '4')
