SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;

/*
3_queries_group-by/4_total_assgnmt_subs.sql
*/
