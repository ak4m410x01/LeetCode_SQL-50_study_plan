-- Write your PostgreSQL query statement below
SELECT
    contest_id,
    ROUND(
        (
            COUNT(Register.user_id) * 100 /(
                SELECT
                    COUNT(user_id)
                FROM
                    Users
            ) :: FLOAT
        ) :: NUMERIC,
        2
    ) AS percentage
FROM
    Register
GROUP BY
    contest_id
ORDER BY
    percentage DESC,
    contest_id;