SELECT way AS __geometry__ 
        , "natural" 
        , waterway 
        , landuse 
        , name 
FROM planet_osm_polygon 
WHERE (waterway IN ('dock' 
        , 'mill_pond' 
        , 'riverbank' 
        , 'canal') 
    OR landuse IN ('reservoir' 
        , 'water' 
        , 'basin') 
    OR "natural" IN ('lake' 
        , 'water' 
        , 'land' 
        , 'glacier' 
        , 'mud')) 
    AND building IS NULL 
ORDER BY z_order 
        , way_area DESC
