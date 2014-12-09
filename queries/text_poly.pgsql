SELECT way AS __geometry__ 
        , aeroway 
        , shop 
        , access 
        , amenity 
        , leisure 
        , landuse 
        , man_made 
        , "natural" 
        , place 
        , tourism 
        , NULL AS ele 
        , name 
        , ref 
        , military 
        , waterway 
        , historic 
        , way_area 
FROM planet_osm_polygon 
WHERE amenity IS NOT NULL 
    OR shop IN ('supermarket' 
        , 'bakery' 
        , 'clothes' 
        , 'fashion' 
        , 'convenience' 
        , 'doityourself' 
        , 'hairdresser' 
        , 'department_store' 
        ,  'butcher' 
        , 'car' 
        , 'car_repair' 
        , 'bicycle') 
    OR leisure IS NOT NULL 
    OR landuse IS NOT NULL 
    OR tourism IS NOT NULL 
    OR "natural" IS NOT NULL 
    OR man_made IN ('lighthouse' 
        , 'windmill') 
    OR place='island' 
    OR military='danger_area' 
    OR historic IN ('memorial' 
        , 'archaeological_site')
