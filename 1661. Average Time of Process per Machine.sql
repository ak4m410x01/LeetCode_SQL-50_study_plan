-- Write your PostgreSQL query statement below
SELECT
    st.machine_id,
    ROUND(
        CAST(AVG(ed.timestamp - st.timestamp) AS numeric),
        3
    ) AS processing_time
FROM
    activity AS st
    JOIN activity AS ed ON st.machine_id = ed.machine_id
    AND st.process_id = ed.process_id
    AND st.activity_type = 'start'
    AND ed.activity_type = 'end'
GROUP BY
    st.machine_id;