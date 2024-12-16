SELECT
  AVG(gr.grade) AS average_grade
FROM
  grades gr
JOIN
  subjects sub ON gr.subject_id = sub.id
WHERE
  sub.teacher_id = %s;  ---номер викладача від 1 до 3