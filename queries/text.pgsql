SELECT way AS __geometry__ 
        , amenity 
        , shop 
        , access 
        , leisure 
        , landuse 
        , man_made 
        , "natural" 
        , place 
        , tourism 
        , ele 
        , name 
        , ref 
        , military 
        , aeroway 
        , waterway 
        , historic 
        , NULL AS way_area 
FROM planet_osm_point 
WHERE amenity IS NOT NULL 
    OR shop IN ('supermarket' 
        , 'bakery' 
        , 'clothes' 
        , 'fashion' 
        , 'convenience' 
        , 'doityourself' 
        , 'hairdresser' 
        , 'department_store' 
        , 'butcher' 
        , 'car' 
        , 'car_repair' 
        , 'bicycle' 
        , 'florist') 
    OR leisure IS NOT NULL 
    OR landuse IS NOT NULL 
    OR tourism IS NOT NULL 
    OR "natural" IS NOT NULL 
    OR man_made IN ('lighthouse' 
        , 'windmill') 
    OR place='island' 
    OR military='danger_area' 
    OR aeroway='gate' 
    OR waterway='lock' 
    OR historic IN ('memorial' 
        , 'archaeological_site')
