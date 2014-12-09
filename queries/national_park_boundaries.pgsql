SELECT way AS __geometry__ 
        , way_area 
        , name 
        , boundary 
FROM planet_osm_polygon 
WHERE (boundary='national_park' 
    OR leisure='nature_reserve') 
    AND building IS NULL
