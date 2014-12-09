SELECT way AS __geometry__ 
        , "natural" 
FROM planet_osm_polygon 
WHERE "natural" IN ('marsh' 
        , 'wetland') 
    AND building IS NULL 
ORDER BY z_order 
        , way_area DESC
