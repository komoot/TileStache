SELECT way AS __geometry__ 
        , 
COALESCE(('highway_' || 
  (CASE
  WHEN highway IN ('cycleway' 
        , 'living_street' 
        , 'services')
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
  THEN 'platform' else NULL end)) 
        ,  ('aeroway_' || 
  (CASE
  WHEN aeroway IN ('runway')
  THEN 'runway' else NULL end)) 
        ,  ('aeroway_' || 
  (CASE
  WHEN aeroway IN ('helipad')
  THEN 'helipad' else NULL end)) 
        ,  ('aeroway_' || 
  (CASE
  WHEN aeroway IN ('aeroway')
  THEN 'aeroway' else NULL end))) AS feature 
FROM planet_osm_polygon 
WHERE highway IN ('residential' 
        , 'unclassified' 
        , 'pedestrian' 
        , 'service' 
        , 'footway' 
        , 'living_street' 
        , 'track' 
        , 'path' 
        , 'platform' 
        , 'services') 
    OR railway IN ('platform') 
    OR aeroway IN ('runway' 
        , 'taxiway' 
        , 'helipad') 
ORDER BY z_order 
        , way_area DESC
