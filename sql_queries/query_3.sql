SELECT
  g.name AS group_name,
  AVG(gr.grade) AS average_grade
FROM
  groups g
JOIN
  students s ON g.id = s.group_id
JOIN
  grades gr ON s.id = gr.student_id
WHERE
  gr.subject_id = %s  -- номер предмету від 1 до 6
GROUP BY
  g.id;