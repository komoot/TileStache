SELECT way AS __geometry__ 
        ,  religion 
        ,  
COALESCE (aeroway 
        ,  amenity 
        ,  landuse 
        ,  leisure 
        ,  military 
        ,  "natural" 
        ,  power 
        ,  tourism 
        ,  highway) AS feature 
FROM ( SELECT way AS __geometry__ 
        ,  ('aeroway_' || 
  (CASE
  WHEN aeroway IN ('apron' 
        ,  'aerodrome')
  THEN aeroway else NULL end)) AS aeroway 
        ,  ('amenity_' || 
  (CASE
  WHEN amenity IN ('parking' 
        ,  'university' 
        ,  'college' 
        ,  'school' 
        ,  'hospital' 
        ,  'kindergarten' 
        ,  'grave_yard')
  THEN amenity else NULL end)) AS amenity 
        ,  ('landuse_' || 
  (CASE
  WHEN landuse IN ('quarry' 
        ,  'vineyard' 
        ,  'orchard' 
        ,  'cemetery' 
        ,  'grave_yard' 
        ,  'residential' 
        ,  'garages' 
        ,  'field' 
        ,  'meadow' 
        ,  'grass' 
        ,  'allotments' 
        ,  'forest' 
        ,  'farmyard' 
        ,  'farm' 
        ,  'farmland' 
        ,  'recreation_ground' 
        ,  'conservation' 
        ,  'village_green' 
        ,  'retail' 
        ,  'industrial' 
        ,  'railway' 
        ,  'commercial' 
        ,  'brownfield' 
        ,  'landfill' 
        ,  'greenfield' 
        ,  'construction')
  THEN landuse else NULL end)) AS landuse 
        ,  ('leisure_' || 
  (CASE
  WHEN leisure IN ('swimming_pool' 
        ,  'playground' 
        ,  'park' 
        ,  'recreation_ground' 
        ,  'common' 
        ,  'garden' 
        ,  'golf_course' 
        ,  'picnic_table')
  THEN leisure else NULL end)) AS leisure 
        ,  ('military_' || 
  (CASE
  WHEN military IN ('barracks' 
        ,  'danger_area')
  THEN military else NULL end)) AS military 
        ,  ('natural_' || 
  (CASE
  WHEN "natural" IN ('field' 
        , 'beach' 
        , 'desert' 
        , 'heath' 
        , 'mud' 
        , 'grassland' 
        , 'wood' 
        , 'sand' 
        , 'scrub')
  THEN "natural" else NULL end)) AS "natural" 
        ,  ('power_' || 
  (CASE
  WHEN power IN ('station' 
        , 'sub_station' 
        , 'substation' 
        , 'generator')
  THEN power else NULL end)) AS power 
        ,  ('tourism_' || 
  (CASE
  WHEN tourism IN ('attraction' 
        ,  'camp_site' 
        ,  'caravan_site' 
        ,  'picnic_site' 
        ,  'zoo')
  THEN tourism else NULL end)) AS tourism 
        ,  ('highway_' || 
  (CASE
  WHEN highway IN ('services' 
        ,  'rest_area')
  THEN highway else NULL end)) AS highway 
        ,  CASE
  WHEN religion IN ('christian' 
        , 'jewish')
  THEN religion else 'INT-generic'::text end AS religion 
FROM planet_osm_polygon 
WHERE landuse IS NOT NULL 
    OR leisure IS NOT NULL 
    OR aeroway IN ('apron' 
        , 'aerodrome') 
    OR amenity IN ('parking' 
        , 'university' 
        , 'college' 
        , 'school' 
        , 'hospital' 
        , 'kindergarten' 
        , 'grave_yard') 
    OR military IN ('barracks' 
        , 'danger_area') 
    OR "natural" IN ('field' 
        , 'beach' 
        , 'desert' 
        , 'heath' 
        , 'mud' 
        , 'grassland' 
        , 'wood' 
        , 'sand' 
        , 'scrub') 
    OR power IN ('station' 
        , 'sub_station' 
        , 'generator') 
    OR tourism IN ('attraction' 
        , 'camp_site' 
        , 'caravan_site' 
        , 'picnic_site' 
        , 'zoo') 
    OR highway IN ('services' 
        , 'rest_area') 
ORDER BY z_order 
        , way_area DESC ) AS landcover
