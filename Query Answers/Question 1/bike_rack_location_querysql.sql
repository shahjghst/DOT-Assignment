--Question 1, Bike Rack Location


SELECT 
boroname,
ntaname,
COUNT(*) AS number_of_bike_racks 
FROM bike_parking
GROUP BY boroname, ntaname


UNION ALL

--Borough totals
SELECT CONCAT( 'Total ', boroname) AS boroname, 
'' AS ntaname, 
COUNT(*) AS number_of_bike_racks
FROM bike_parking
GROUP BY boroname


UNION ALL

--Total Overall
SELECT 'Total Sum' AS boroname, 
'' AS ntaname, 
COUNT(*) AS number_of_bike_racks
FROM bike_parking
ORDER BY boroname, ntaname