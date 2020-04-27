SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;
/*
3_queries_group-by/2_busy_days.sql
*/
