SELECT way AS __geometry__ 
        , aeroway 
        ,  CASE
  WHEN building IN ('garage' 
        , 'roof' 
        , 'garages' 
        , 'service' 
        , 'shed' 
        , 'shelter' 
        , 'cabin' 
        , 'storage_tank' 
        , 'tank' 
        , 'support' 
        , 'glasshouse' 
        , 'greenhouse' 
        , 'mobile_home' 
        , 'kiosk' 
        , 'silo' 
        , 'canopy' 
        , 'tent')
  THEN 'INT-light'::text else building end AS building 
FROM planet_osm_polygon 
WHERE (building IS NOT NULL 
    AND building NOT IN ('no' 
        , 'station' 
        , 'supermarket' 
        , 'planned') 
    AND (railway IS NULL 
    OR railway != 'station') 
    AND (amenity IS NULL 
    OR amenity != 'place_of_worship')) 
    OR aeroway = 'terminal' 
ORDER BY z_order 
        , way_area DESC
