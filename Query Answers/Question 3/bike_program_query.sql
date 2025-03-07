--Question 3, Bike Program
--Answer: There are two bike programs. Bike racks has 34,896 racks while bike corral has 922.
SELECT 
program AS bike_programs,
COUNT(*) AS number_of_bike_racks
FROM bike_parking
GROUP BY program