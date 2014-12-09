SELECT way AS __geometry__ 
        , leisure 
        ,  CASE
  WHEN leisure='pitch'
  THEN 2
  WHEN leisure='track'
  THEN 1 else 0 end AS prio 
FROM planet_osm_polygon 
WHERE leisure IN ('sports_centre' 
        , 'stadium' 
        , 'pitch' 
        , 'track') 
ORDER BY z_order 
        , prio 
        , way_area DESC
