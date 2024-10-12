create schema Mobiles;
show databases;

use mobiles;

Select * from mobile;

#check mobile features and price list
Select phone_name, price from mobile;

# find out the price of 5 most expensive phone

Select * from mobile order by price desc limit 5;

# find out the price of 5 most cheapest phone
Select * from mobile order by price limit 5;

#list of top 5 samsung phone with price and all features
Select * from mobile where phone_name like '%Samsung%' order by price desc limit 5;

#must have android phone list then top 5 high price android phones

Select * from mobile where Operating_System_Type = 'Android' order by price desc limit 5;

# Must have android phone list then top 5 lower price android phones:
Select * from mobile where Operating_System_Type= "Android" order by price limit 5;

# Must have IOS phone list then top 5 High price IOS phones
Select * from mobile where Operating_System_Type = "IOS" order by price desc limit 5;


# Must have IOS phone list then to 5 lower price IOS phones

Select * from mobile where Operating_System_Type="IOS" order by price limit 5;


# Write a query which phone support 5g and also top 5 phone with 5g support

Select * from mobile where Phone_name like "%5G%" order by price desc limit 5;
# Total price of all mobile is to be found with brand name

Select Phone_name, Brands, sum(price) as Total_price from mobile group by Phone_name;

Select * from mobile;

Select Brands, sum(Price) as Total_Price from mobile group by Brands order by Total_Price desc;



