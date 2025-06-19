-- Total row count
SELECT COUNT(*) FROM airline_delays;

-- Available years
SELECT DISTINCT year FROM airline_delays;

-- Distinct airports
SELECT COUNT(DISTINCT airport) AS total_airports FROM airline_delays;

-- Distinct carriers
select distinct carrier_name from airline_delays
where carrier_name like '%American%';

-- Filter to American Airlines
SELECT * FROM airline_delays
WHERE carrier_name in ('American Airlines Inc.', 'American Eagle Airlines Inc.');

--  Delay Trend by Month (All Years)
SELECT 
    year, month,
    SUM(arr_delay) AS total_delay
FROM airline_delays
WHERE carrier_name IN ('American Airlines Inc.', 'American Eagle Airlines Inc.')
GROUP BY year, month
ORDER BY year, month;

-- Total delay reasons across all airlines
SELECT 
    SUM(carrier_ct) AS carrier_issues,
    SUM(weather_ct) AS weather,
    SUM(nas_ct) AS NAS,
    SUM(security_ct) AS security,
    SUM(late_aircraft_ct) AS late_aircraft
FROM airline_delays;

-- Top Delay Causes for American Airlines
SELECT 
    SUM(carrier_ct) AS carrier_issue,
    SUM(weather_ct) AS weather,
    SUM(nas_ct) AS NAS,
    SUM(security_ct) AS security,
    SUM(late_aircraft_ct) AS late_aircraft
FROM airline_delays
WHERE carrier_name in ('American Airlines Inc.', 'American Eagle Airlines Inc.');

-- Delay per Airport for American Airlines
SELECT 
    airport_name,
    SUM(arr_delay) AS total_delay
FROM airline_delays
WHERE carrier_name in ('American Airlines Inc.', 'American Eagle Airlines Inc.')
GROUP BY airport_name
ORDER BY total_delay DESC
LIMIT 10;

-- Cancelled and Diverted Flights Trend
SELECT 
    month, year,
    SUM(arr_cancelled) AS cancelled,
    SUM(arr_diverted) AS diverted
FROM airline_delays
WHERE carrier_name IN ('American Airlines Inc.', 'American Eagle Airlines Inc.')
GROUP BY year, month
ORDER BY year, month;
