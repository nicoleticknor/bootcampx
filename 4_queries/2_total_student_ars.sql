SELECT COUNT(assistance_requests.student_id) AS total_assistances, name
FROM assistance_requests
JOIN students
ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name

/*
4_queries/2_total_student_ars.sql
*/
