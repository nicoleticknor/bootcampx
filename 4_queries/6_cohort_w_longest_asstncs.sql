SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;


/*
4_queries/6_cohort_w_longest_asstncs.sql
*/
