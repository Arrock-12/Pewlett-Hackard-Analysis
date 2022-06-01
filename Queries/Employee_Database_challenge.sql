-- Retirees by Title

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	tl.title,
	tl.from_date,
	tl.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tl
on (e.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--AND (tl.to_date = '9999-01-01');
ORDER BY e.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- Get a count of number of retirees by title

SELECT COUNT (ut.title), ut.title
--INTO retiring_titles
FROM  unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC; Get a count of number of retirees by title

-- Create mentorship table for employees born in 1965
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
 	tl.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employees as de
On (e.emp_no = de.emp_no)
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-21')
ORDER BY emp_no;