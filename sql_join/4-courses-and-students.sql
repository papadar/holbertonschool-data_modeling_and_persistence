SELECT courses.title, students.name
from courses 
LEFT JOIN enrollments
ON courses.id = enrollments.course_id
LEFT JOIN students
ON enrollments.student_id = students.id
ORDER BY courses.title ASC, students.name ASC