SELECT
  s.fullname AS student_name,
  g.grade
FROM
  students s
JOIN
  grades g ON s.id = g.student_id
WHERE
  s.group_id = %s AND g.subject_id = %s; --- номер групи від 1 до 3 + номер предмету від 1 до 6