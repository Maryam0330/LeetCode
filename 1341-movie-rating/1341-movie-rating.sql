# Write your MySQL query statement below
(SELECT u.name AS results
FROM MovieRating mr 
JOIN Users u ON mr.user_id = u.user_id
GROUP BY u.name
ORDER BY COUNT(*) DESC, u.name
LIMIT 1)

UNION ALL

(SELECT m.title AS results
FROM MovieRating mr
JOIN Movies m ON mr.movie_id = m.movie_id
WHERE mr.created_at >= '2020-02-01' AND mr.created_at < '2020-03-01'
GROUP BY m.title 
ORDER BY AVG(mr.rating) DESC, m.title
LIMIT 1);