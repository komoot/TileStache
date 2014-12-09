SELECT way AS __geometry__ 
        , railway 
        , bridge 
FROM planet_osm_line 
WHERE railway='tram' 
    AND (tunnel IS NULL 
    OR tunnel != 'yes')
