SELECT
	start_station,
    COUNT(*) start_station
FROM
    trips
GROUP by start_station
ORDER BY start_station DESC