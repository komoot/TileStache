SELECT way AS __geometry__ 
        , place 
        , name 
FROM planet_osm_point 
WHERE place IN ('city' 
        , 'town') 
    AND (capital IS NULL 
    OR capital != 'yes')
