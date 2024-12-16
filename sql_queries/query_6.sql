SELECT
  s.fullname AS student_name
FROM
  students s
WHERE
  s.group_id = %s;  --- номер групи від 1 до 3