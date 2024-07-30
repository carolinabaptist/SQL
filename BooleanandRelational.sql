-- From the following table, write a  SQL query to locate 
the details of customers with grade values above 100. 
Return customer_id, cust_name, city, grade, and salesman_id. 

SELECT *
FROM customer
WHERE grade > 100;

-- From the following table, write a SQL query to find all 
the customers in ‘New York’ city who have a grade value above 
100. Return customer_id, cust_name, city, grade, and salesman_id.

SELECT *
FROM customer
WHERE city = 'New York' AND grade > 100;

-- From the following table, write a SQL query to find customers 
who are from the city of New York or have a grade of over 100. 
Return customer_id, cust_name, city, grade, and salesman_id.  

SELECT *
FROM customer
WHERE city = 'New York' OR grade > 100;

-- From the following table, write a SQL query to find customers 
who are either from the city 'New York' or who do not have a 
grade greater than 100. Return customer_id, cust_name, city, 
grade, and salesman_id.  

SELECT *
FROM customer
WHERE city = 'New York' OR NOT grade > 100;

-- From the following table, write a SQL query to identify 
customers who do not belong to the city of 'New York' or have 
a grade value that exceeds 100. Return customer_id, cust_name, 
city, grade, and salesman_id.  

SELECT *
FROM customer
WHERE NOT (city = 'New York' OR grade > 100);

--From the following table, write a SQL query to find details of
all orders excluding those with ord_date equal to '2012-09-10' 
and salesman_id higher than 5005 or purch_amt greater than 1000.
Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

SELECT *
FROM orders
WHERE NOT (ord_date = '2012-09-10' AND salesman_id > 5005) OR purch_amt>1000);

