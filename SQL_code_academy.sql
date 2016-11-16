SELECT *
FROM flights
WHERE origin in(
  SELECT code
  FROM airports
  WHERE faa_region = "ASO");

-- Using a subquery, find the average total distance flown by day of week and month.
SELECT a.dep_month,
       a.dep_day_of_week,
       AVG(a.flight_distance) AS average_distance
  FROM (
        SELECT dep_month,
              dep_day_of_week,
               dep_date,
               sum(distance) AS flight_distance
          FROM flights
         GROUP BY 1,2,3
       ) a
 GROUP BY 1,2
 ORDER BY 1,2;

-- Find the id of the flights whose distance is below average for their carrier.
SELECT id
FROM flights AS f
WHERE distance < (
	SELECT AVG(distance)
	FROM flights
	WHERE carrier = f.carrier);

SELECT COUNT(*)
FROM flights
WHERE arr_time IS NOT NULL and destination = 'ATL';


SELECT
    CASE
        WHEN elevation < 250 THEN 'Low'
        WHEN elevation BETWEEN 250 AND 1749 THEN 'Medium'
        WHEN elevation >= 1750 THEN 'High'
        ELSE 'Unknown'
    END AS elevation_tier
    , COUNT(*)
FROM airports
GROUP BY 1;
