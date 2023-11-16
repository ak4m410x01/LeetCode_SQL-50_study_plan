-- Write your PostgreSQL query statement below
SELECT
    Students.student_id,
    Students.student_name,
    Subjects.subject_name,
    COUNT(Examinations.subject_name) AS attended_exams
FROM
    (
        Students
        JOIN Subjects ON 1 = 1
    )
    LEFT JOIN Examinations ON (Students.student_id, Subjects.subject_name) = (
        Examinations.student_id,
        Examinations.subject_name
    )
GROUP BY
    Students.student_id,
    Students.student_name,
    Subjects.subject_name
ORDER BY
    Students.student_id,
    Subjects.subject_name;