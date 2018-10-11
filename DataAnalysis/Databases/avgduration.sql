SELECT
	end_station,
    AVG(duration) duration
FROM
    trips
GROUP BY end_station