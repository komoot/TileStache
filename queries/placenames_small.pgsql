SELECT way AS __geometry__ 
        , place 
        , name 
FROM planet_osm_point 
WHERE place IN ('suburb' 
        , 'village' 
        , 'hamlet' 
        , 'neighbourhood' 
        , 'locality' 
        , 'isolated_dwelling' 
        , 'farm')
