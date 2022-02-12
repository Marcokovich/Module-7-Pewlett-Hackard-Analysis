--merge the two
--Steps 1 through 7
--DROP TABLE retirement_titles;
SELECT emp.emp_no,
    emp.first_name,
    emp.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp.emp_no;
--SELECT * FROM public.retirement_titles

--Steps 8 through 15
--DROP TABLE unique_titles;
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;
--SELECT * FROM public.unique_table

--Steps 16 through 21
--DROP TABLE retiring_titles;
SELECT COUNT(ut.title),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;
--SELECT * FROM public.retiring_titles

--Deliverable 2 ALL
--DROP TABLE mentorship_eligibility;
SELECT DISTINCT ON(emp.emp_no) emp.emp_no,
emp.first_name,
emp.last_name,
emp.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
from employees as emp
INNER JOIN dept_emp as de
ON emp.emp_no = de.emp_no
INNER JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = ('9999-01-01')
ORDER BY emp_no ASC;
--SELECT * FROM public.mentorship_table
