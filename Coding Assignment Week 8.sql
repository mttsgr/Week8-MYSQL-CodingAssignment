use employees;
select count(employees.emp_no) as "Number of Employees", titles.title as "Job Title"
from employees
inner join titles on employees.emp_no = titles.emp_no
where employees.birth_date > '1965-01-01'
group by titles.title ;

select avg(salaries.salary) as "Average Salary", titles.title as "Job Title"
from salaries
inner join titles on salaries.emp_no = titles.emp_no 
group by titles.title; 

select sum(salaries.salary) as "Total Amount", departments.dept_name as "Department Names"
from salaries s
inner join dept_emp on salaries.emp_no = dept_emp.emp_no 
inner join departments on dept_emp.dept_no = departments.dept.no
where departments.dept_name = "Marketing"
and salaries.from_date > '1989-12-31' and salaries to_date < '1993-01-01'
group by departments.dept_name;