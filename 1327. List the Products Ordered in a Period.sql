-- Write your PostgreSQL query statement below
SELECT
    Products.product_name,
    SUM(Orders.unit) AS unit
FROM
    Products
    JOIN Orders ON Products.product_id = Orders.product_id
WHERE
    order_date :: TEXT LIKE '2020-02-%'
GROUP BY
    Products.product_name
HAVING
    SUM(Orders.unit) >= 100;