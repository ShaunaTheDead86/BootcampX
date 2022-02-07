SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions
FULL OUTER JOIN students
ON assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';