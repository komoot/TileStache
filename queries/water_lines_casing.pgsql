SELECT way AS __geometry__ 
        , waterway 
FROM planet_osm_line 
WHERE waterway IN ('stream' 
        , 'drain' 
        , 'ditch') 
    AND (tunnel IS NULL 
    OR tunnel != 'yes')
