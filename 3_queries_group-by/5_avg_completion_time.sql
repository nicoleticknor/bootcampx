SELECT students.name AS student, AVG(duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(duration) DESC;

/*
3_queries_group-by/5_avg_completion_time.sql
*/
