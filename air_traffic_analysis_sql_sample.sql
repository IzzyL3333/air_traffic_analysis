use airtraffic;

SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY';

/* SAMPLE QUESTIONS -----------------------------------------------------------------------------------------------------------------------------------------------------
1. A flight's tail number is the actual number affixed to the fuselage of an aircraft, much like a car license plate. As such, each plane has a unique tail 
	number and the number of unique tail numbers for each airline should approximate how many planes the airline operates in total. Using this information, 
    determine the number of unique aircrafts each AIRLINE operated in total over 2018-2019.
QUERY: the number of unique aircrafts each airline operated in total over 2018-2019*/
SELECT AirlineName, 
	COUNT(DISTINCT(Tail_Number)) AS numFlights
FROM flights
GROUP BY AirlineName;
 
/* 2. Similarly, the total miles traveled by each airline gives an idea of total fuel costs and the distance traveled per plane gives an approximation of total 
equipment costs. What is the average distance traveled per aircraft for each of the three airlines?
QUERY: average distance traveled per aircraft for each of the following airlines: AA, DL, WN */
SELECT AirlineName, 
	ROUND(SUM(Distance) / COUNT(DISTINCT(Tail_Number)),0) AS avgDistancePerAircraft 
FROM flights
GROUP BY AirlineName
ORDER BY avgDistancePerAircraft DESC;