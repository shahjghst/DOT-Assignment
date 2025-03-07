--Question 2, Highest and Lowest Number of Racks
--Answer: Williasmburg has the highest number of bike racks while Arden Heights-Rossville and Hutchinson Metro Center have the lowest.

WITH nta_total AS (
SELECT 
ntaname, 
COUNT(*) AS number_of_bike_racks 
FROM bike_parking
GROUP BY ntaname
)

SELECT 
ntaname, 
number_of_bike_racks 
FROM nta_total
WHERE number_of_bike_racks = (SELECT MAX(number_of_bike_racks) FROM nta_total) OR number_of_bike_racks = (SELECT MIN(number_of_bike_racks) FROM nta_total)
ORDER BY number_of_bike_racks DESC
