SELECT way AS __geometry__ 
        , man_made 
FROM planet_osm_line 
WHERE man_made IN ('pier' 
        , 'breakwater' 
        , 'groyne')
