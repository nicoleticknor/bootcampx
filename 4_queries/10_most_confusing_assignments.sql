SELECT assignments.id AS id, name, day, chapter, COUNT(assistance_requests.assignment_id) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC

/*
4_queries/10_most_confusing_assignments.sql
*/
