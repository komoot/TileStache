SELECT way AS __geometry__ 
        , 
COALESCE(highway 
        , aeroway) AS highway 
        , ref 
        , char_length(ref) AS length 
        ,  CASE
  WHEN bridge IN ('yes' 
        , 'true' 
        , '1')
  THEN 'yes'::text else 'no'::text end AS bridge 
FROM planet_osm_line 
WHERE (highway IS NOT NULL 
    OR aeroway IS NOT NULL) 
    AND ref IS NOT NULL 
    AND char_length(ref) BETWEEN 1 
    AND 8
