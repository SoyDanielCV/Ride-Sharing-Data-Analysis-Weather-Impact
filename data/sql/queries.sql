-- 1. Trips por compañía (15-16 Nov)
SELECT 
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM trips
JOIN cabs ON trips.cab_id = cabs.cab_id
WHERE DATE(trips.start_ts) IN ('2017-11-15', '2017-11-16')
GROUP BY cabs.company_name
ORDER BY trips_amount DESC;

-- 2. Yellow & Blue companies
SELECT
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
AND (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%')
GROUP BY company_name;

-- 3. Top companies vs Other
SELECT
    CASE
        WHEN cabs.company_name = 'Flash Cab' THEN 'Flash Cab'
        WHEN cabs.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services'
        ELSE 'Other'
    END AS company,
    COUNT(trips.trip_id) AS trips_amount
FROM cabs
JOIN trips ON trips.cab_id = cabs.cab_id
WHERE CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY company
ORDER BY trips_amount DESC;

-- 4. Weather classification
SELECT 
    ts,
    CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records;

-- 5. Final dataset for hypothesis
SELECT
    trips.start_ts,
    CASE
        WHEN weather_records.description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds
FROM trips
JOIN weather_records ON trips.start_ts = weather_records.ts
WHERE trips.pickup_location_id = 50
AND trips.dropoff_location_id = 63
AND EXTRACT(DOW FROM trips.start_ts) = 6;
