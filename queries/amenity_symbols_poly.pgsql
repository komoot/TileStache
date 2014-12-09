SELECT * 
FROM planet_osm_polygon 
WHERE aeroway IN ('aerodrome' 
        , 'helipad') 
    OR barrier IN ('bollard' 
        , 'gate' 
        , 'lift_gate' 
        , 'block') 
    OR highway IN ('mini_roundabout' 
        , 'gate') 
    OR man_made IN ('lighthouse' 
        , 'power_wind' 
        , 'windmill' 
        , 'mast') 
    OR (power='generator' 
    AND ("generator:source"='wind' 
    OR power_source='wind')) 
    OR "natural" IN ('peak' 
        , 'volcano' 
        , 'spring' 
        , 'tree') 
    OR railway='level_crossing'
