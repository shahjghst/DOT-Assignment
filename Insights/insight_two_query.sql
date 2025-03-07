SELECT racktype, COUNT(*) AS number_of_bike_racks  FROM bike_parking
GROUP BY racktype
ORDER BY number_of_bike_racks DESC

SELECT racktype,femafldt, COUNT(*) AS number_of_bike_racks 
FROM bike_parking
WHERE racktype IN ('Large Hoop','Small Hoop','U Rack','Wave Rack','Bike Corral')
GROUP BY racktype,femafldt
ORDER BY number_of_bike_racks DESC
