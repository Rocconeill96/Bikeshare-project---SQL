SELECT bike_id, start_time, end_time, start_station_id, end_station_id, user_type, user_birth_year, user_gender
FROM bluebikes_2016
UNION ALL
SELECT bike_id, start_time, end_time, start_station_id, end_station_id, user_type, user_birth_year, user_gender
FROM bluebikes_2017
UNION ALL
SELECT bike_id, start_time, end_time, start_station_id, end_station_id, user_type, user_birth_year, user_gender
FROM bluebikes_2018
UNION ALL
SELECT bike_id, start_time, end_time, start_station_id, end_station_id, user_type, user_birth_year, user_gender
FROM bluebikes_2019;
