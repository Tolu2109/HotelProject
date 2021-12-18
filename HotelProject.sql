
---https://www.absentdata.com/hotel_revenue_historical_full/
---Develop a database to Analyze and Visualize Hotel Booking Data
---i. Is Hotel revenue growing by year?
---ii.Should parking lot be increased
---iii. What trends can be seen in the data
---To view all  datasets of the years as one

select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020]

--Create Table function

with hotels as (
select * from dbo.[2018]
union
select * from dbo.[2019]
union
select * from dbo.[2020])

select * from hotels
left join market_segment
on hotels.market_segment = market_segment.market_segment
left join meal_cost
on meal_cost.meal = hotels.meal

