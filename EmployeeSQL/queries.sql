-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries 
on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select employees.first_name,employees.last_name,employees.hire_date
from employees
where cast(hire_date as VARCHAR) LIKE '1986%'
order by hire_date;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from employees
join dept_manager 
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name,employees.last_name,departments.dept_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name,last_name,sex
from employees
where first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
join dept_emp 
on employees.emp_no = dept_emp.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from employees
join dept_emp 
on employees.emp_no = dept_emp.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name in ('Sales','Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,
count(last_name) as "Frequency of last names"
from employees
group by last_name
order by "Frequency of last names" desc;


