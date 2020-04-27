SELECT cohorts.name, count(students.*) as student_count
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);
/*
3_queries_group-by/3_large_cohorts.sql
*/
