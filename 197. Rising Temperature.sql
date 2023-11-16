-- Write your PostgreSQL query statement below
SELECT
    w1.id
FROM
    Weather AS w1,
    Weather AS w2
WHERE
    w1.temperature > w2.temperature
    AND w1.recorddate - w2.recorddate = 1;