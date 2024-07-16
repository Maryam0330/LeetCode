# Write your MySQL query statement below
SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1
UNION ALL
SELECT NULL
FROM MyNumbers
ORDER BY num DESC LIMIT 1;