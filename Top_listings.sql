--top listings by revenue for current year

USE airbnb; 
SELECT id, name, 365 - availability_365 AS booked_year , 
price,
price*(365 - availability_365) AS revenue
FROM listings ORDER BY revenue DESC LIMIT 20; 
