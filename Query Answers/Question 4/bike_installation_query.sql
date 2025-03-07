--Question 4, Bike Installations
SELECT  
LEFT(date_inst, 4) AS year_installed,  
COUNT(*) AS number_of_bike_racks
FROM bike_parking
GROUP BY LEFT(date_inst, 4)
ORDER BY number_of_bike_racks DESC 