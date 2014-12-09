SELECT way AS __geometry__ 
FROM planet_osm_line 
WHERE highway='bus_guideway' 
    AND (tunnel IS NULL 
    OR tunnel != 'yes')
