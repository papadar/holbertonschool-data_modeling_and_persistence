SELECT courses.title, reg_count
FROM courses
LEFT JOIN registrations
ON courses.id = registrations.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(registrations.student_id) < (
    SELECT AVG(tally.reg_count * 1.0)
    FROM (
        SELECT COUNT(r.student_id) AS reg_count
        FROM courses c
        LEFT JOIN registrations r
        ON r.course_id = c.id 
        GROUP BY c.id
    ) AS tally
)
ORDER BY courses.title ASC