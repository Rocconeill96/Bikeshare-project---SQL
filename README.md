# Bikeshare 

N.B. for more information and examples, please see the attached project presentation in the SQL repository

## Brief:

As Data Scientists for bluebikes, our task was to suggest a marketing strategy to increase the subscribership for riders around the massachussets area.

## Trello board:
First experience in Agile project management using a trello board. This is very handy in collaboration with others and was the first time in experiencing this. It encourages discipline in getting certain tasks complete before assigning others and is highly beneficial to an Agile framework.

![Trello board](https://user-images.githubusercontent.com/116355407/232326679-4c4b7fab-c244-4643-9125-0ecbd76df3f4.png)

## Entity Relationship Diagram:
The following is a representation of normalisation of bikeshare data across consecutive years. Upon further exploration of each table, it was decided to just focus on 2019 as the years weren't too dissimilar and was the most recent data.

![ER bikeshare](https://user-images.githubusercontent.com/116355407/232326774-10a87f08-cfc9-4c7c-ab2d-455396601091.png)


 ## Data Cleaning: 
 Whilst the data was in date/time format, It wasn't in a format that was useful to us at first glance. As season and time affects rider activity due to the reliance of outdoor conditions, time related needed to be extracted: 
 

2)Male and Female assignment 
-Extract()
-Case Statements 
-Nulls in male and female were attributed as 'Other' and 'not recorded'


