SELECT way AS __geometry__ 
        , amenity 
        , shop 
        , tourism 
        , highway 
        , man_made 
        , access 
        , religion 
        , waterway 
        , lock 
        , historic 
        , leisure 
FROM planet_osm_polygon 
WHERE amenity IS NOT NULL 
    OR shop IS NOT NULL 
    OR tourism IN ('alpine_hut' 
        , 'camp_site' 
        , 'picnic_site' 
        , 'caravan_site' 
        , 'guest_house' 
        , 'hostel' 
        , 'hotel' 
        , 'motel' 
        , 'museum' 
        , 'viewpoint' 
        , 'bed_and_breakfast' 
        , 'information' 
        , 'chalet') 
    OR highway IN ('bus_stop' 
        , 'traffic_signals') 
    OR man_made IN ('mast' 
        , 'water_tower') 
    OR historic IN ('memorial' 
        , 'archaeological_site') 
    OR leisure IN ('playground' 
        ,  'picnic_table')
