#Show all customer records
Select * from Sales.Customers;

#Show total number of customers
Select count(*) from sales.customers;

#Show transactions for Chennai market (market code for chennai is Mark001
Select * from sales.transactions
where market_code = 'Mark001';

#Show distrinct product codes that were sold in chennai
Select distinct product_code from sales.transactions
where market_code = 'Mark001';

#Show transactions where currency is US dollars
select * from sales.transactions
where currency = 'USD';

#Show transactions in 2020 join by date table
select sales.date.*,sales.transactions.* from sales.transactions
inner join sales.date on
sales.transactions.order_date = sales.date.date
where sales.date.year = 2020;

#Show total revenue in year 2020,
select sales.date.year,sum(sales.transactions.sales_amount) as Total_Revenue from sales.transactions 
join sales.date on sales.transactions.order_date = sales.date.date
where sales.date.year = 2020;

#Show total revenue in year 2020, January Month,
select sales.date.year,sales.date.month_name,sum(sales.transactions.sales_amount) as Total_Revenue from sales.transactions 
join sales.date on sales.transactions.order_date = sales.date.date
where sales.date.year = 2020 and sales.date.month_name = 'January';

#Show total revenue in year 2020 in Chennai
select sales.date.year,sales.transactions.market_code,sum(sales.transactions.sales_amount) as Total_Revenue from sales.transactions 
join sales.date on sales.transactions.order_date = sales.date.date
where sales.date.year = 2020 and sales.transactions.market_code = 'Mark001';

