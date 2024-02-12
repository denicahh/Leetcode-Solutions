#175 Combine Two Tables 

SELECT firstName, lastName, city, state
FROM Person
LEFT JOIN Address ON Person.personID = Address.personID;

#181 Employees Earning More than Managers

SELECT e1.name AS Employee
FROM Employee e1
JOIN Employee e2 ON e1.managerid = e2.id
WHERE e1.salary > e2.salary;


