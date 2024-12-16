SELECT
  s.fullname AS student_name,
  AVG(g.grade) AS average_grade
FROM
  students s
JOIN
  grades g ON s.id = g.student_id
WHERE
  g.subject_id = %s  -- номер предмету від 1 до 6
GROUP BY
  s.id
ORDER BY
  average_grade DESC
LIMIT 1;
