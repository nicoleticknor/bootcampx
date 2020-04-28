SELECT day, COUNT(*) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day

/*
4_queries/11_total_assignments_and_duration.sql
*/
