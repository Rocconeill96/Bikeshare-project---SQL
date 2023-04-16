# Bikeshare 

N.B. for more information and examples, please see the attached project presentation in the SQL repository

## Brief:

As Data Scientists for bluebikes, our task was to suggest a marketing strategy to increase the subscribership for riders around the massachussets.

## Trello board:
First experience in Agile project management using a trello board. This is very handy in collaboration with others and was the first time in experiencing this. It encourages discipline in getting certain tasks complete before assigning others and is highly beneficial to an Agile framework.

![Trello board](https://user-images.githubusercontent.com/116355407/232326679-4c4b7fab-c244-4643-9125-0ecbd76df3f4.png)

## Entity Relationship Diagram:
The following is a representation of normalisation of bikeshare data across consecutive years. Upon further exploration of each table, it was decided to just focus on 2019 as the years weren't too dissimilar and was the most recent data.

![ER bikeshare](https://user-images.githubusercontent.com/116355407/232326774-10a87f08-cfc9-4c7c-ab2d-455396601091.png)


 ## Data Cleaning: 
 Whilst the data was in date/time format, It wasn't in a format that was useful to us at first glance. As season and time affects rider activity due to the reliance of outdoor conditions, time related needed to be extracted: 
 
SQL query snippet to extract month and quarter:
 
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
 
As there were some null values in the sex/gender column, nulls were replaced with 'other/not recorded'

## Analysis/visualisations 

All visualisations were generated in excel. For more information, please see the uploaded powerpoint presentation. Below, is a series of visualisations to one of the business questions that was of interest. These were also resulting visualisations as a result of the queries generated above to extract useful data.

### Will rider frequency vary throughout the year?

![Time of year](https://user-images.githubusercontent.com/116355407/232327520-9dde4338-914c-4243-a54a-43d94018563d.png)

1)The third quarter was the highest perfoming quarter for both subscribers and normal customers. Due to the peak of summer, this wasn't suprising due to everyone being in high spirits and more temptation to being active outside

2)Quarter 1 to Quarter 2 saw the biggest increase in rider frequency with +515% increase for customers and +122% for subscribers

3)On average, the ratio between customers and subscribers is 1:5

Similar visualisation but focusing on individual months:

![Time of year - month focus](https://user-images.githubusercontent.com/116355407/232334034-3b365cfd-15fc-46c4-92d7-e6fed580ab27.png)

1)September and August - Highest total riders for subscriber and customer respectively. Whilst still in the summer period, August can vary each year in terms of temperature but September tends to be a consistent month for mangeable temperatures

2)January - Lowest Total for both. Peak of winter normally so very heavy snow and harsh temperatures

3)April - Greatest increase: +140% for customers +50% for subscribers. Still in the early stages of spring and riders enjoy the beautiful sunlight without the hot temperatures which is best of both worlds.

### At what time does the most rider activity occur?


![Time of day](https://user-images.githubusercontent.com/116355407/232334395-3fa0a095-b195-4536-a031-d649a91fcd06.png)

1)Late afternoon is the most popular for both subscribers and customers. This is likely due to the majority of individuals being most alert at that point and thus want to get some riding done.

## Conclusions/recommendations to increase subscribership

1)As the winter period is very harsh, has the least rider activity and has events like the snow festival, limited edition bikes that have stronger traction and friction could be implemented by the stalls within festival grounds to keep revenue high.

2)Reduced subscriber cost if choosing a specific location and/or time of day.

3)Subscribe over winter including free waterproofs and hand warmers.

## Reflection

This was a good project that I enjoyed as I was enjoying learning SQL and applying it. If doing this project again, I would like to have looked at any distribution of age so that more options and incentives could be devised within specific age groups.

I would also be interested in sex/gender. Due to activity levels are dependent on the individual, lifestyle and interest it would be interesting to see if men, women or others are more physically active on the bikes. This could be an incentive to refer a same sex scheme or opposite sex scheme.




