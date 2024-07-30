-- salesman table structure: salesman_id, name, city, commission
-- Creation of salesman table
CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4,2)
);

INSERT INTO salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);

-- Write a SQL statement that displays all the information about all salespeople.

SELECT * FROM salesman;

-- Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 

SELECT 'This is SQL Exercise, Practice and Solution' AS message;

-- Write a SQL query to display three numbers in three columns. 
SELECT 5, 10, 15;

-- Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server. 

SELECT 10 + 15;

-- Write an SQL query to display the result of an arithmetic expression. 

SELECT 10 + 15 - 5 * 2;

-- Write a SQL statement to display specific columns such as names and commissions for all salespeople.

SELECT name, commission FROM salesman;  

-- Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders. 

SELECT ord_date, salesman_id, ord_no, purch_amt FROM orders;

-- From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 

SELECT DISTINCT salesman_id FROM orders;

-- From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 

SELECT name, city FROM salesman WHERE city = 'Paris';

-- From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  

SELECT customer_id, cust_name, city, grade, salesman_id FROM customer WHERE grade = 200;

-- or

SELECT * FROM customer WHERE grade = 200;

-- From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.  

SELECT ord_no, ord_date, purch_amt FROM orders WHERE salesman_id = 5001;

-- From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 

SELECT year, subject and winner FROM nobel_win WHERE year = 1970;

-- From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner. 

SELECT winner FROM nobel_win WHERE year = 1971 AND subject = 'Literature';

-- From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject. 

SELECT year, subject FROM nobel_win WHERE winner = 'Dennis Gabor';

-- From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner. 

SELECT winner FROM nobel_win WHERE subject = 'Physics' AND year>=1950;

-- From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. Begin and end values are included. Return year, subject, winner, and country.  

SELECT year, subject, winner, country FROM nobel_win WHERE subject = 'Chemistry' AND year>=1965 AND year<=1975;

-- Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin. 

SELECT * FROM nobel_win WHERE AND winner IN ('Menachem Begin', 'Yitzhak Rabin') AND year > 1972 ;
