SELECT
  sub.name AS subject_name
FROM
  grades gr
JOIN
  subjects sub ON gr.subject_id = sub.id
WHERE
  gr.student_id = %s AND sub.teacher_id = %s; --номер студента від 1 до 30 + номер викладача від 1 до 3