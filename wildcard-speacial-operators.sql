--From the following table, write a SQL query to find the details 
--of those salespeople who come from the 'Paris' City or 'Rome' 
--City. Return salesman_id, name, city, commission.

SELECT *
FROM salesman
WHERE city = 'Rome' OR city ='Paris';


--From the following table, write a SQL query to find the details 
--of the salespeople who come from either 'Paris' or 'Rome'. 
--Return salesman_id, name, city, commission. 

SELECT *
FROM salesman
WHERE city = 'Rome' OR city ='Paris';


--From the following table, write a SQL query to find the details 
--of those salespeople who live in cities other than Paris and 
--Rome. Return salesman_id, name, city, commission.  

SELECT *
FROM salesman
WHERE NOT (city = 'Rome' OR city ='Paris');

--From the following table, write a SQL query to retrieve the 
--details of all customers whose ID belongs to any of the values 
--3007, 3008 or 3009. Return customer_id, cust_name, city, grade, 
--and salesman_id.  

SELECT *
FROM customer
WHERE customer_id IN (3007,3008,3009);

--From the following table, write a SQL query to find salespeople 
--who receive commissions between 0.12 and 0.14 (begin and end 
--values are included). Return salesman_id, name, city, and 
--commission.  


SELECT *
FROM salesman
WHERE comission BETWEEN 0.12 AND 0.14;
