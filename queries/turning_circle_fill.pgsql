SELECT distinct on (p.way) p.way AS way AS __geometry__ 
        , l.highway AS int_tc_type 
        , CASE
  WHEN l.service IN ('parking_aisle' 
        , 'drive-through' 
        , 'driveway')
  THEN 'INT-minor'::text else 'INT-normal'::text end AS int_tc_service 
FROM planet_osm_point p join planet_osm_line l on ST_DWithin(p.way 
        , l.way 
        , 0.1) join (values ('tertiary' 
        , 1) 
        ,  ('unclassified' 
        , 2) 
        ,  ('residential' 
        , 3) 
        ,  ('living_street' 
        , 4) 
        ,  ('service' 
        , 5) ) AS v (highway 
        , prio) on v.highway=l.highway 
WHERE p.highway='turning_circle' 
ORDER BY p.way 
        , v.prio
