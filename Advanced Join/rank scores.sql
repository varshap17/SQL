SELECT
  s1.Score ,count(s2.Score) as 'Rank' from
  (SELECT distinct(score) FROM Scores) as s2 right join Scores as s1
    on s1.score <= s2.score
group by s1.id
ORDER BY 1 desc
