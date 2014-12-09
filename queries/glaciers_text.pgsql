SELECT way AS __geometry__ 
        , name 
        , way_area 
FROM planet_osm_polygon 
WHERE "natural"='glacier' 
    AND building IS NULL 
ORDER BY way_area DESC
