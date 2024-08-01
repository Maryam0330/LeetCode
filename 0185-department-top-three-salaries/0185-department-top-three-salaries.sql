# Write your MySQL query statement below
SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d ON e.departmentId = d.id
WHERE 3 > (SELECT COUNT(DISTINCT e1.salary)
           FROM employee e1
           WHERE e1.salary > e.salary AND e1.departmentId = e.departmentId
           );