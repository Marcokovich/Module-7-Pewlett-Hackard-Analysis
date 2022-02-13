--DROP TABLE mentor_count;
SELECT COUNT(me.emp_no)
INTO mentor_count
FROM mentorship_eligibility as me;
--DROP TABLE retiring_count;
SELECT SUM(rt.count)
INTO retiring_count
FROM retiring_titles as rt;
SELECT rc.sum,
mc.count
FROM mentor_count as mc,
retiring_count as rc;