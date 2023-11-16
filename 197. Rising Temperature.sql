-- Write your PostgreSQL query statement below
SELECT
    w1.id
FROM
    Weather AS w1,
    Weather AS w2
WHERE
    w1.temperature > w2.temperature
    AND EXTRACT(
        'Day'
        FROM
            w1.recordDate
    ) - EXTRACT(
        'Day'
        FROM
            w2.recordDate
    ) = 1;