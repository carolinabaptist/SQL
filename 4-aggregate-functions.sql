--1 From the following table, write a  SQL query to calculate total 
--purchase amount of all orders. Return total purchase amount.

SELECT SUM(purch_amt)
FROM orders;

--2 From the following table, write a SQL query to calculate 
--the average purchase amount of all orders. Return average 
--purchase amount.

SELECT AVG(purch_amt)
FROM orders;

--3 From the following table, write a  SQL query that counts 
--the number of unique salespeople. Return number of salespeople.

SELECT COUNT(DISTINCT salesman_id) AS number_of_salespeople
FROM orders;  

--4 From the following table, write a SQL query to count the number
--of customers. Return number of customers.  

SELECT COUNT(*) AS number_of_customers
FROM customer; 

--5 From the following table, write a  SQL query to determine the
-- number of customers who received at least one grade for their 
--activity.  

SELECT COUNT(ALL grade)
FROM customer;

--6 From the following table, write a  SQL query to find the 
--maximum purchase amount.

SELECT MAX(purch_amt)
FROM orders;

--7 From the following table, write a SQL query to find the
-- minimum purchase amount. 

SELECT MIN(purch_amt)
FROM orders;

--8 From the following table, write a  SQL query to find the
-- highest grade of the customers in each city. Return city, 
-- maximum grade.  

SELECT city, MAX(grade) as maximum grade
FROM customer
GROUP BY city;

--9 From the following table, write a  SQL query to find the
-- highest purchase amount ordered by each customer. Return 
--customer ID, maximum purchase amount. 

SELECT customer_id, MAX(purch_amt) as mpa
FROM orders
GROUP BY customer_id;

--10 From the following table, write a SQL query to find the 
-- highest purchase amount ordered by each customer on a 
--particular date. Return, order date and highest purchase amount.

SELECT customer_id, ord_date, MAX(purch_amt) as mpa
FROM orders
GROUP BY customer_id, ord_date;

--11 From the following table, write a  SQL query to determine 
--the highest purchase amount made by each salesperson 
--on '2012-08-17'. Return salesperson ID, purchase amount 

SELECT salesman_id, MAX(purch-amt)
FROM orders
WHERE ord_date = '2012-08-17'
GROUP BY salesman-id;

--12 From the following table, write a SQL query to find the 
--highest order (purchase) amount by each customer on a particular
--order date. Filter the result by highest order (purchase) amount
--above 2000.00. 
--Return customer id, order date and maximum purchase amount.

SELECT customer_id, ord_date, MAX(purch-amt) as max
FROM orders
GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) > 2000.00;
