SELECT way AS __geometry__ 
        , name 
        , railway 
        , aerialway 
        , disused 
FROM planet_osm_point 
WHERE railway IN ('station' 
        , 'halt' 
        , 'tram_stop' 
        , 'subway_entrance') 
    OR aerialway='station'
