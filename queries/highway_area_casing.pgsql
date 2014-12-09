SELECT way AS __geometry__ 
        , 
COALESCE(('highway_' || 
  (CASE
  WHEN highway IN ('cycleway')
  THEN 'cycleway' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('pedestrian')
  THEN 'pedestrian' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('service')
  THEN 'service' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('residential')
  THEN 'residential' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('unclassified')
  THEN 'unclassified' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('footway')
  THEN 'footway'else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('path')
  THEN 'path'else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('track')
  THEN 'track' else NULL end)) 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('platform')
  THEN 'platform' else NULL end)) 
        ,  ('railway_' || 
  (CASE
  WHEN railway IN ('platform')
  THEN 'platform' else NULL end))) AS feature 
FROM planet_osm_polygon 
WHERE highway IN ('residential' 
        , 'unclassified' 
        , 'pedestrian' 
        , 'service' 
        , 'footway' 
        , 'track' 
        , 'path' 
        , 'platform') 
    OR railway IN ('platform') 
ORDER BY z_order 
        , way_area DESC
