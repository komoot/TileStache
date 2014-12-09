SELECT way AS __geometry__ 
        , name 
        , railway 
        , aerialway 
        , disused 
FROM planet_osm_polygon 
WHERE railway IN ('station' 
        , 'halt' 
        , 'tram_stop') 
    OR aerialway='station'
