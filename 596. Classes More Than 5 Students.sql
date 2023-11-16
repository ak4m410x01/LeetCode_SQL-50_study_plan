-- Write your PostgreSQL query statement below
SELECT
    class
FROM
    (
        SELECT
            class,
            COUNT(student) AS students
        FROM
            courses
        GROUP BY
            class
    ) AS class_students
WHERE
    students >= 5;