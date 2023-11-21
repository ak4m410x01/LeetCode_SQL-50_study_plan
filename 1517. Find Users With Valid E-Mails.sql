-- Write your PostgreSQL query statement below
SELECT
    *
FROM
    Users
WHERE
    mail ~ '^[A-Za-z]{1}[A-Za-z0-9._-]*@leetcode\.com$';