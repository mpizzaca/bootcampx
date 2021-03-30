SELECT COUNT(*) AS total_assistances, name
FROM assistance_requests
JOIN students ON student_id = students.id
GROUP BY name
HAVING name = 'Elliot Dickinson';