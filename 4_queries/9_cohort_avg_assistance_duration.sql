SELECT AVG(total_duration) AS average_total_duration
FROM (SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON student_id = students.id
GROUP BY cohorts.name) AS inner_query


/*
4_queries/9_cohort_avg_assistance_duration.sql

Note to future Nicole - inner_query is whatever is within AVG() but plural (i.e. "AS total_durations" would work too)
*/
