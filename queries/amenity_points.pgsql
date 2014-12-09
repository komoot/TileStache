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
FROM planet_osm_point 
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
        , 'traffic_signals' 
        , 'ford') 
    OR man_made IN ('mast' 
        , 'water_tower') 
    OR historic IN ('memorial' 
        , 'archaeological_site') 
    OR waterway='lock' 
    OR lock='yes' 
    OR leisure IN ('playground' 
        , 'slipway' 
        , 'picnic_table')
