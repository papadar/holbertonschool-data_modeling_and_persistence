SELECT AVG(tally.reg_count * 1.0)
FROM (
    SELECT COUNT(registrations.student_id) AS reg_count
    FROM courses
    LEFT JOIN registrations
    ON registrations.course_id = courses.id
    GROUP BY courses.id
) AS tally