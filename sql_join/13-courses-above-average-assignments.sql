SELECT courses.title
FROM courses
JOIN registrations
ON courses.id = registrations.course_id
GROUP BY courses.title
HAVING COUNT(registrations.student_id) > (
    SELECT AVG(tally.reg_count)
    FROM (
        SELECT COUNT(*) AS reg_count
        FROM registrations
        GROUP BY course_id
    ) AS tally
)
ORDER BY courses.title ASC