SELECT name, SUM(duration) / COUNT(assignment_submissions.*) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY SUM(duration) / COUNT(assignment_submissions.*) DESC;