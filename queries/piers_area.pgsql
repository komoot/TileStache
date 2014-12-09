SELECT way AS __geometry__ 
        , man_made 
FROM planet_osm_polygon 
WHERE man_made IN ('pier' 
        , 'breakwater' 
        , 'groyne')
