select sum(score) score, e.emp_no, emp_name, position, email
from hr_employees e, hr_grade g
where e.emp_no = g.emp_no
group by e.emp_no
order by sum(score) DESC limit 1;
