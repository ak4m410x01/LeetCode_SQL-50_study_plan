-- Write your PostgreSQL query statement below
SELECT
    (
        SELECT
            salary
        FROM
            Employee
        GROUP BY
            salary
        ORDER BY
            salary DESC OFFSET 1
        LIMIT
            1
    ) AS SecondHighestSalary;

-- =================================================
-- Write your PostgreSQL query statement below
SELECT
    MAX(salary) AS SecondHighestSalary
FROM
    Employee
WHERE
    salary != (
        SELECT
            MAX(salary)
        FROM
            Employee
    );