SELECT
  sub.name AS subject_name
FROM
  subjects sub
WHERE
  sub.teacher_id = %s;  -- номер викладача від 1 до 3