SELECT way AS __geometry__ 
        , name 
FROM planet_osm_line 
WHERE waterway='canal' 
    AND bridge IN ('yes' 
        , 'true' 
        , '1' 
        , 'aqueduct') 
ORDER BY z_order
