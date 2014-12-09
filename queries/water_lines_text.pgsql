SELECT way AS __geometry__ 
        , waterway 
        , lock 
        , name 
        , tunnel 
FROM planet_osm_line 
WHERE waterway IN ('weir' 
        , 'river' 
        , 'canal' 
        , 'derelict_canal' 
        , 'stream' 
        , 'drain' 
        , 'ditch' 
        , 'wadi') 
ORDER BY z_order
