-- Write your PostgreSQL query statement below
DELETE FROM
    Person
WHERE
    Id NOT IN (
        SELECT
            Id
        FROM
            (
                SELECT
                    MIN(id) AS Id
                FROM
                    Person
                GROUP BY
                    Email
            ) AS distinct_emails
    );