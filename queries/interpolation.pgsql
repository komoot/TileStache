SELECT way AS __geometry__ 
FROM planet_osm_line 
WHERE "addr:interpolation" IS NOT NULL
