SELECT CASE 
       WHEN EXTRACT(month FROM start_time) = '1' THEN 'January'
	   WHEN EXTRACT(month FROM start_time) = '2' THEN 'February'
	   WHEN EXTRACT(month FROM start_time) = '3' THEN 'March'
	   WHEN EXTRACT(month FROM start_time) = '4' THEN 'April'
	   WHEN EXTRACT(month FROM start_time) = '5' THEN 'May'
	   WHEN EXTRACT(month FROM start_time) = '6' THEN 'June'
	   WHEN EXTRACT(month FROM start_time) = '7' THEN 'July'
	   WHEN EXTRACT(month FROM start_time) = '8' THEN 'August'
	   WHEN EXTRACT(month FROM start_time) = '9' THEN 'September'
	   WHEN EXTRACT(month FROM start_time) = '10'THEN 'October'
	   WHEN EXTRACT(month FROM start_time) = '11'THEN 'November'
	   WHEN EXTRACT(month FROM start_time) = '12'THEN 'December'
	   ELSE 'Month not recorded' END AS month, user_type, count(start_time) as rider_frequency
FROM bluebikes_2019
--WHERE EXTRACT(month FROM start_time) >= '10'
GROUP BY month, user_type 
order by month ;

SELECT CASE 
       WHEN EXTRACT(QUARTER FROM start_time) = '1' THEN 'January - March'
	   WHEN EXTRACT(QUARTER FROM start_time) = '2' THEN 'April - June'
	   WHEN EXTRACT(QUARTER FROM start_time) = '3' THEN 'July - September'
	   WHEN EXTRACT(QUARTER FROM start_time) = '4' THEN 'October - December'
	   ELSE 'quarter not available' END as quarter_19, user_type, count(start_time) AS rider_frequency
FROM bluebikes_2019 
GROUP BY quarter_19, user_type
ORDER BY quarter_19;





