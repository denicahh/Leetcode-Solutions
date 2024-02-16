#175 Combine Two Tables 

SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address ON Person.personID = Address.personID;

#181 Employees Earning More than Managers

SELECT e1.name AS Employee
FROM Employee e1
JOIN Employee e2 ON e1.managerid = e2.id
WHERE e1.salary > e2.salary;

#182 Duplicate Emails 

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

#183 Customers Who Never_Order

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerID FROM Orders)

#1757 Recyclable_and Low Fat Products

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';

#584 Find Customer Referee 

SELECT name
FROM Customer
WHERE referee_id != '2' OR referee_id is null ;

#595 Big Countries 

SELECT name, population, area
FROM WORLD 
WHERE area >= '3000000' OR population >= '25000000'

#1148 Article Views

SELECT DISTINCT author_id AS id
FROM Views 
WHERE author_id = viewer_id 
ORDER BY id  asc;

#570 Managers with_at least 5_Direct Reports

SELECT e1.name
FROM Employee e1
JOIN Employee e2 ON e1.id = e2.managerID
WHERE e2.managerID IS NOT NULL
GROUP BY e2.managerID
HAVING COUNT(*) >= 5;

#1683 Invalid Tweets 

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

#1378 Replace Employee ID With_The Unique_Identifier 
  
SELECT e1.name, e2.unique_id
FROM Employees e1
LEFT JOIN EmployeeUNI e2 ON e1.id = e2.id;

#1068 Product Sales Analysis 
  
SELECT p1.product_name, p2.year, p2.price
FROM Sales p2
JOIN Product p1 ON p1.product_id = p2.product_id;

#1581 Customer who visited but did not_make any_transactions 

SELECT v1.customer_id, COUNT(v1.visit_id) AS count_no_trans
FROM Visits v1
LEFT JOIN Transactions t1 ON v1.visit_id = t1.visit_id
WHERE t1.transaction_id is NULL
GROUP BY v1.customer_id;


