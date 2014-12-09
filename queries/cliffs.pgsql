SELECT way AS __geometry__ 
        , "natural" 
        , man_made 
FROM planet_osm_line 
WHERE "natural" = 'cliff' 
    OR man_made = 'embankment'
