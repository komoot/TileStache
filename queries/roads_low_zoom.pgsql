SELECT way AS __geometry__ 
        , 
COALESCE(('highway_' || 
  (CASE
  WHEN highway IS NOT NULL
  THEN highway else NULL end)) 
        ,  ('railway_' || 
  (CASE
  WHEN (railway='rail' 
    AND service IN ('spur' 
        , 'siding' 
        , 'yard'))
  THEN 'INT-spur-siding-yard'
  WHEN railway IN ('rail' 
        , 'tram' 
        , 'light_rail' 
        , 'funicular' 
        , 'narrow_gauge')
  THEN railway else NULL end))) AS feature 
        , tunnel 
FROM planet_osm_roads 
WHERE highway IS NOT NULL 
    OR (railway IS NOT NULL 
    AND railway!='preserved' 
    AND (service IS NULL 
    OR service NOT IN ('spur' 
        , 'siding' 
        , 'yard'))) 
ORDER BY z_order
