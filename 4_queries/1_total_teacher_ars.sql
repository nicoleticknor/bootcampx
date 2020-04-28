SELECT COUNT(assistance_requests.teacher_id) AS total_assistances, name
FROM assistance_requests
JOIN teachers
ON teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name

/*
4_queries/1_total_teacher_ars.sql
*/
