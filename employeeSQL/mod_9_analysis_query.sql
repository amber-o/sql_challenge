
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees LEFT JOIN salaries on employees.emp_no = salaries.emp_no ;

SELECT first_name, last_name, hire_date from employees where hire_date > '1/1/1996' AND hire_date < '12/31/1996';

SELECT d.dept_name, dm.dept_no, e.emp_no, e.first_name, e.last_name
FROM departments as d left join dept_MANAGER as dm on
d.dept_no = dm.dept_no left join employees as e on dm.emp_no = e.emp_no;



SELECT d.dept_name, de.dept_no, de.emp_no, e.first_name, e.last_name from departments as d left join dept_emp as de on
d.dept_no = de.dept_no left join employees as e on de.emp_no = e.emp_no;

select first_name, last_name, sex from employees where first_name = 'Hercules' and last_name like'B%';

select d.dept_name, e.emp_no, e.last_name, e.first_name from departments as d left join dept_emp as de on 
d.dept_no = de.dept_no left join employees as e on de.emp_no = e.emp_no where dept_name = 'Sales';

select d.dept_name, e.emp_no, e.last_name, e.first_name from departments as d left join dept_emp as de on 
d.dept_no = de.dept_no left join employees as e on de.emp_no = e.emp_no where dept_name = 'Sales' or dept_name = 'Development';


select last_name, count(emp_no) from employees group by last_name order by count(emp_no) desc;