SELECT way AS __geometry__ 
        , building 
        , railway 
        , amenity 
FROM planet_osm_polygon 
WHERE railway='station' 
    OR building IN ('station' 
        , 'supermarket') 
    OR amenity='place_of_worship' 
ORDER BY z_order 
        , way_area DESC
