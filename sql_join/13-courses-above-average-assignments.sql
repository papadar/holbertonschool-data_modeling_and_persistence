SELECT courses.title
FROM courses
JOIN registrations
ON courses.id = registrations.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(registrations.student_id) > (
    SELECT AVG(tally.reg_count * 1.0)
    FROM (
        SELECT COUNT(registrations.student_id) AS reg_count
        FROM courses
        LEFT JOIN registrations 
        ON registrations.course_id = courses.id 
        GROUP BY courses.id
    ) AS tally
)
ORDER BY courses.title ASC