-- Data Analysis
-- 1.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees.employees as e 
inner join employees.salaries as s on s.emp_no=e.emp_no;

-- 2.
select first_name, last_name, hire_date
from employees.employees 
where date_part('year',hire_date)=1986;

-- 3.
select dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
from employees.dept_manager as dm
inner join employees.departments as d on d.dept_no=dm.dept_no
inner join employees.employees as e on e.emp_no=dm.emp_no;

-- 4.
select de.emp_no, de.dept_no, d.dept_name, e.last_name, e.first_name
from employees.dept_emp as de
inner join employees.departments as d on d.dept_no=de.dept_no
inner join employees.employees as e on e.emp_no=de.emp_no;

-- 5.

select first_name, last_name, sex
from employees.employees
where first_name='Hercules' and last_name like 'B%';

-- 6.
select e.emp_no, e.last_name, e.first_name
from employees.dept_emp as de
inner join employees.employees as e on e.emp_no=de.emp_no
inner join employees.departments as d on d.dept_no=de.dept_no
where d.dept_name='Sales';

-- 7.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees.dept_emp as de
inner join employees.employees as e on e.emp_no=de.emp_no
inner join employees.departments as d on d.dept_no=de.dept_no
where d.dept_name='Sales' or d.dept_name='Development';

-- 8. 
select last_name, count(last_name) as frequency
from employees.employees
group by last_name
order by frequency desc;