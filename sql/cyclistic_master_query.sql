-- Master SQL query recreated. Original was unfortunately lost since I did not save it prior to BigQuery timing out on me.

--Following is to combine all 12 month csv's into one

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined` AS

WITH all_months_raw AS (
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_01`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_02`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_03`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_04`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_05`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_06`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_07`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_08`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_09`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_10`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_11`
    UNION ALL
    SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_12`
)

SELECT 
    *,
    -- 1. Calculate ride duration in minutes (Sheets D2-C2 equivalent)
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_minutes,
    
    -- 2. Extract day of week (Sheets WEEKDAY C2,1 equivalent: 1=Sunday, 7=Saturday)
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week

FROM 
    all_months_raw

WHERE 
    -- Data Cleaning: Filter out rows where end time is before or equal to start time
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0;


-- next i'll make sure the lattitude and longitude are 4 digits long

UPDATE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
SET 
    start_lat = ROUND(start_lat, 4),
    start_lng = ROUND(start_lng, 4),
    end_lat = ROUND(end_lat, 4),
    end_lng = ROUND(end_lng, 4)
WHERE TRUE;
  

-- following is to update the lattitude and longitude as float64

 CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined` AS

WITH all_months_raw AS (
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_01` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_02` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_03` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_04` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_05` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_06` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_07` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_08` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_09` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_10` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_11` UNION ALL
    SELECT * EXCEPT(start_lat, start_lng, end_lat, end_lng), CAST(start_lat AS FLOAT64) AS start_lat, CAST(start_lng AS FLOAT64) AS start_lng, CAST(end_lat AS FLOAT64) AS end_lat, CAST(end_lng AS FLOAT64) AS end_lng FROM `lunar-shift-505523-k6.Cyclistic_Data.trip_data_12`
)

SELECT 
    *,
    -- 1. Calculate ride duration in minutes (Sheets D2-C2 equivalent)
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_minutes,
    
    -- 2. Extract day of week (Sheets WEEKDAY C2,1 equivalent: 1=Sunday, 7=Saturday)
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week

FROM 
    all_months_raw

WHERE 
    -- Data Cleaning: Filter out rows where end time is before or equal to start time
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) > 0;

-- next is a validation check on a sample of data

SELECT 
    start_lat, 
    start_lng, 
    end_lat, 
    end_lng 
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.trip_data_07`
WHERE 
    start_lat IS NOT NULL
LIMIT 10;

-- re-naming the ride_length_minutes column

ALTER TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
RENAME COLUMN ride_length_minutes TO ride_length;

--Created a new ride_length column to ensure no errors are present (This was a workaround so I didn't have to recreate the table)

ALTER TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

ADD COLUMN ride_length_temp STRING;



ALTER TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

DROP COLUMN ride_length;



ALTER TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

RENAME COLUMN ride_length_temp TO ride_length; 

--Re-ordered my columns

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined` AS
SELECT 
    -- 1. All standard ride columns
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    
    -- 2. Your calculated columns in your desired order
    ride_length,
    day_of_week

FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`;

-- changed the day_of_week from a time stamp to a written day

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined` AS
SELECT 
    -- 1. Standard trip attributes
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    
    -- 2. Ride length (HH:MM:SS)
    ride_length,
    
    -- 3. Written day of week (e.g., 'Sunday', 'Monday', 'Tuesday')
    FORMAT_TIMESTAMP('%A', CAST(started_at AS TIMESTAMP)) AS day_of_week

FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`;


-- checking there are no NULL values under member_casual column

SELECT 
    ride_id, 
    member_casual
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
WHERE 
    member_casual NOT IN ('member', 'casual') 
    OR member_casual IS NULL;

-- checking for any duplicates

SELECT 
    COUNT(ride_id) AS total_rows,
    COUNT(DISTINCT ride_id) AS unique_rides,
    COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_count
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`;

-- another check on the same thing
SELECT 
    ride_id, 
    COUNT(*) AS occurrences
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
GROUP BY 
    ride_id
HAVING 
    COUNT(*) > 1;


-- Identifying untrimmed data

SELECT 
    COUNTIF(ride_id != TRIM(ride_id)) AS dirty_ride_id,
    COUNTIF(rideable_type != TRIM(rideable_type)) AS dirty_rideable_type,
    COUNTIF(start_station_name != TRIM(start_station_name)) AS dirty_start_station,
    COUNTIF(end_station_name != TRIM(end_station_name)) AS dirty_end_station,
    COUNTIF(member_casual != TRIM(member_casual)) AS dirty_member_casual
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`;

-- trimming the data

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined` AS

WITH cleaned_and_trimmed AS (
    SELECT 
        TRIM(ride_id) AS ride_id,
        TRIM(rideable_type) AS rideable_type,
        started_at,
        ended_at,
        TRIM(start_station_name) AS start_station_name,
        TRIM(start_station_id) AS start_station_id,
        TRIM(end_station_name) AS end_station_name,
        TRIM(end_station_id) AS end_station_id,
        start_lat,
        start_lng,
        end_lat,
        end_lng,
        TRIM(member_casual) AS member_casual,
        ride_length,
        day_of_week,
        -- Assigns a row number to identify duplicate ride_ids
        ROW_NUMBER() OVER(PARTITION BY TRIM(ride_id) ORDER BY started_at) AS row_num
    FROM 
        `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
)

SELECT 
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    ride_length,
    day_of_week
FROM 
    cleaned_and_trimmed
WHERE 
    row_num = 1; -- Keeps only the first occurrence of each ride_id

-- calculated the mean and max of ride length, and minimum ride length. Turned this data into the monthly_trends summary table

SELECT

-- 1. Calculations in Minutes (easy to read)

ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS mean_ride_length_minutes,

ROUND(MAX(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS max_ride_length_minutes,

ROUND(MIN(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS min_ride_length_minutes,



-- 2. Mean formatted back to HH:MM:SS

FORMAT('%02d:%02d:%02d',

DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 3600),

MOD(DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60), 60),

MOD(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60)

) AS mean_ride_length_formatted,



-- 3. Max formatted back to HH:MM:SS

FORMAT('%02d:%02d:%02d',

DIV(MAX(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND)), 3600),

MOD(DIV(MAX(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND)), 60), 60),

MOD(MAX(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND)), 60)

) AS max_ride_length_formatted



FROM

`lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`;

-- calculated everage ride length by riders. Turned this data into the DOW_hourly_trends summary table

SELECT

member_casual,

COUNT(*) AS total_rides,

ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_ride_length_minutes,

ROUND(MAX(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS max_ride_length_minutes,


-- Formatted HH:MM:SS average

FORMAT('%02d:%02d:%02d',

DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 3600),

MOD(DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60), 60),

MOD(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60)

) AS avg_ride_length_formatted



FROM

`lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

GROUP BY

member_casual; 

-- calculated the mothly rides by riders and monthly average ride duration. Used this data to create Monthly_trends summary table

SELECT 
    -- 1. Numeric month for proper sorting (1 to 12)
    EXTRACT(MONTH FROM CAST(started_at AS TIMESTAMP)) AS month_num,
    
    -- 2. Full month name (e.g., 'January', 'July')
    FORMAT_TIMESTAMP('%B', CAST(started_at AS TIMESTAMP)) AS month_name,
    
    -- 3. Rider segment
    member_casual,
    
    -- 4. Total volume of rides
    COUNT(ride_id) AS total_rides,
    
    -- 5. Average trip duration in minutes
    ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_ride_length_minutes,
    
    -- 6. Formatted average duration (HH:MM:SS)
    FORMAT('%02d:%02d:%02d', 
        DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 3600),
        MOD(DIV(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60), 60),
        MOD(CAST(ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND))) AS INT64), 60)
    ) AS avg_ride_length_formatted

FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

GROUP BY 
    month_num,
    month_name,
    member_casual

ORDER BY 
    month_num,
    member_casual;

-- Compared seasonal behavior from each rider

SELECT 
    CASE 
        WHEN EXTRACT(MONTH FROM CAST(started_at AS TIMESTAMP)) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM CAST(started_at AS TIMESTAMP)) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM CAST(started_at AS TIMESTAMP)) IN (6, 7, 8) THEN 'Summer'
        ELSE 'Fall'
    END AS season,
    
    member_casual,
    COUNT(ride_id) AS total_rides,
    ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_ride_length_minutes

FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`

GROUP BY 
    season,
    member_casual

ORDER BY 
    total_rides DESC;

-- The following shows what type of bike the riders perfer. Electric or Classic

WITH bike_summary AS (
    SELECT 
        member_casual,
        rideable_type,
        COUNT(ride_id) AS total_trips,
        ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_duration_minutes
    FROM 
        `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
    GROUP BY 
        member_casual,
        rideable_type
)

SELECT 
    member_casual,
    rideable_type,
    total_trips,
    -- Calculates percentage of trips within each member/casual group
    ROUND(total_trips * 100.0 / SUM(total_trips) OVER(PARTITION BY member_casual), 2) AS pct_of_group_trips,
    avg_duration_minutes,
    -- Format average duration as HH:MM:SS
    FORMAT('%02d:%02d:%02d', 
        DIV(CAST(ROUND(avg_duration_minutes * 60) AS INT64), 3600),
        MOD(DIV(CAST(ROUND(avg_duration_minutes * 60) AS INT64), 60), 60),
        MOD(CAST(ROUND(avg_duration_minutes * 60) AS INT64), 60)
    ) AS avg_duration_formatted
FROM 
    bike_summary
ORDER BY 
    member_casual, 
    total_trips DESC;


--Create a monthly trends table

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.summary_monthly_trends` AS
SELECT 
    EXTRACT(MONTH FROM CAST(started_at AS TIMESTAMP)) AS month_num,
    FORMAT_TIMESTAMP('%B', CAST(started_at AS TIMESTAMP)) AS month_name,
    member_casual,
    COUNT(ride_id) AS total_rides,
    ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_duration_minutes
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
GROUP BY 
    month_num, month_name, member_casual
ORDER BY 
    month_num, member_casual;

-- Create a hourly_DOW_trends table

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.summary_hourly_dow_trends` AS
SELECT 
    EXTRACT(DAYOFWEEK FROM CAST(started_at AS TIMESTAMP)) AS day_of_week_num,
    FORMAT_TIMESTAMP('%A', CAST(started_at AS TIMESTAMP)) AS day_of_week,
    EXTRACT(HOUR FROM CAST(started_at AS TIMESTAMP)) AS hour_of_day,
    member_casual,
    COUNT(ride_id) AS total_rides,
    ROUND(AVG(TIMESTAMP_DIFF(CAST(ended_at AS TIMESTAMP), CAST(started_at AS TIMESTAMP), SECOND) / 60.0), 2) AS avg_duration_minutes
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
GROUP BY 
    day_of_week_num, day_of_week, hour_of_day, member_casual
ORDER BY 
    day_of_week_num, hour_of_day, member_casual;

-- Create a top stations table

CREATE OR REPLACE TABLE `lunar-shift-505523-k6.Cyclistic_Data.summary_top_stations` AS
SELECT 
    start_station_name,
    member_casual,
    ROUND(AVG(start_lat), 4) AS start_lat,
    ROUND(AVG(start_lng), 4) AS start_lng,
    COUNT(ride_id) AS total_rides
FROM 
    `lunar-shift-505523-k6.Cyclistic_Data.full_year_combined`
WHERE 
    start_station_name IS NOT NULL
GROUP BY 
    start_station_name, member_casual
ORDER BY 
    total_rides DESC;

--Previews the monthly trends table

SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.summary_monthly_trends` LIMIT 1000;

--Previews the hourly_DOW trends table

SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.summary_top_stations` LIMIT 1000;

--Previews the top stations table

SELECT * FROM `lunar-shift-505523-k6.Cyclistic_Data.summary_top_stations` LIMIT 1000;

-- End of record

-- End of record
