SELECT way AS __geometry__ 
        , 
COALESCE(('highway_' || highway) 
        ,  ('railway_' ||
  (CASE
  WHEN railway IN ('light_rail' 
        ,  'abandoned' 
        ,  'spur' 
        ,  'siding' 
        ,  'yard' 
        ,  'narrow_gauge' 
        ,  'funicular' 
        ,  'rail' 
        ,  'subway' 
        ,  'tram' 
        ,  'spur' 
        ,  'siding' 
        ,  'monorail' 
        ,  'platform' 
        ,  'preserved' 
        ,  'disused' 
        ,  'construction' 
        ,  'miniature' 
        ,  'turntable')
  THEN railway else NULL end)) 
        ,  ('aeroway_' || aeroway)) AS feature 
        ,  horse 
        ,  foot 
        ,  bicycle 
        ,  tracktype 
        ,  CASE
  WHEN access IN ('permissive')
  THEN 'permissive'::text
  WHEN access IN ('destination')
  THEN 'destination'::text
  WHEN access IN ('no' 
        ,  'private')
  THEN 'no'::text else NULL end AS access 
        ,  construction 
        ,  CASE
  WHEN service IN ('parking_aisle' 
        , 'drive-through' 
        , 'driveway')
  THEN 'INT-minor'::text else 'INT-normal'::text end AS service 
        ,  CASE
  WHEN oneway IN ('yes' 
        ,  '-1') 
    AND highway IN ('motorway' 
        , 'motorway_link' 
        , 'trunk' 
        , 'trunk_link' 
        , 'primary' 
        , 'primary_link' 
        , 'secondary' 
        , 'secondary_link' 
        , 'tertiary' 
        , 'tertiary_link' 
        , 'residential' 
        , 'unclassified' 
        , 'road' 
        , 'service' 
        , 'pedestrian' 
        , 'raceway' 
        , 'living_street' 
        , 'construction')
  THEN oneway else NULL end AS oneway 
        ,  CASE
  WHEN layer IS NULL
  THEN '0' else layer end AS layernotnull 
FROM planet_osm_line 
WHERE (highway IN ('motorway' 
        ,  'motorway_link' 
        ,  'trunk' 
        ,  'trunk_link' 
        ,  'primary' 
        ,  'primary_link' 
        ,  'secondary' 
        ,  'secondary_link' 
        ,  'tertiary' 
        ,  'tertiary_link' 
        ,  'residential' 
        ,  'road' 
        ,  'unclassified' 
        ,  'service' 
        ,  'pedestrian' 
        ,  'living_street' 
        ,  'raceway' 
        ,  'bridleway' 
        ,  'footway' 
        ,  'cycleway' 
        ,  'path' 
        ,  'track' 
        ,  'steps' 
        ,  'platform' 
        ,  'proposed' 
        ,  'construction') 
    OR aeroway IN ('runway' 
        , 'taxiway') 
    OR railway IN ('light_rail' 
        ,  'abandoned' 
        ,  'subway' 
        ,  'narrow_gauge' 
        ,  'rail' 
        ,  'spur' 
        ,  'siding' 
        ,  'preserved' 
        ,  'funicular' 
        ,  'tram' 
        ,  'monorail' 
        ,  'platform' 
        ,  'miniature' 
        ,  'turntable' 
        ,  'disused' 
        ,  'construction')) 
    AND (tunnel IS NULL 
    OR NOT tunnel IN ('yes' 
        , 'true' 
        , '1')) 
    AND (bridge IS NULL 
    OR NOT bridge IN ('yes' 
        , 'true' 
        , '1' 
        , 'viaduct')) 
ORDER BY z_order
