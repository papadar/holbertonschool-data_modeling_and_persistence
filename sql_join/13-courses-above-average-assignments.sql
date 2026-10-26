SELECT courses.title
FROM courses
LEFT JOIN assignments
ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(tally.ass_count * 1.0)
    FROM (
        SELECT COUNT(a.id) AS ass_count
        FROM courses c
        LEFT JOIN assignments a
          ON a.course_id = c.id
        GROUP BY c.id
    ) AS tally
)
ORDER BY courses.title ASC;