# Write your MySQL query statement below
SELECT
    st.machine_id,
    ROUND(AVG(ed.timestamp - st.timestamp), 3) AS processing_time
FROM
    `Activity` AS st
    JOIN `Activity` AS ed
WHERE
    st.machine_id = ed.machine_id
    AND st.process_id = ed.process_id
    AND st.activity_type = 'start'
    AND ed.activity_type = 'end'
GROUP BY
    st.machine_id;