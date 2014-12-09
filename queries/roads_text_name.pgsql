SELECT way AS __geometry__ 
        ,  highway 
        ,  name 
FROM planet_osm_line 
WHERE highway IN ('motorway' 
        , 'motorway_link' 
        , 'trunk' 
        , 'trunk_link' 
        , 'primary' 
        , 'primary_link' 
        , 'secondary' 
        , 'secondary_link' 
        , 'tertiary' 
        , 'tertiary_link' 
        , 'residential' 
        , 'unclassified' 
        , 'road' 
        , 'service' 
        , 'pedestrian' 
        , 'raceway' 
        , 'living_street' 
        ,  'construction' 
        , 'proposed' 
        , 'road' 
        ,  'minor' 
        ,  'living street' 
        ,  'unsurfaced' 
        ,  'track' 
        ,  'byway' 
        ,  'footway' 
        ,  'bridleway' 
        ,  'path' 
        ,  'cycleway') 
    AND name IS NOT NULL
