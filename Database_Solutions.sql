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



