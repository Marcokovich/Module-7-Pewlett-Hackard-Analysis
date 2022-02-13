--DROP TABLE mentorship_titles;
SELECT COUNT(me.title),
me.title
INTO mentorship_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY count DESC;
ALTER TABLE mentorship_titles
RENAME count to mentee_count;

--DROP TABLE mentee_count;
SELECT mt.title,
mt.mentee_count,
rt.count
INTO mentee_count
FROM mentorship_titles as mt
INNER JOIN retiring_titles as rt
ON mt.title = rt.title
ORDER BY rt.count DESC;
ALTER TABLE mentee_count
RENAME count to mentor_count;

SELECT * FROM public.mentee_count
