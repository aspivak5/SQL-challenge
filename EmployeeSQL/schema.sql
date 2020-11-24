CREATE TABLE departments(
	dept_no VARCHAR(250) not null,
	dept_name VARCHAR(250) not null,
	primary key (dept_no)
);

CREATE TABLE titles(
	title_id VARCHAR(255) not null,
	title VARCHAR(255) not null,
	primary key (title_id)
);

CREATE TABLE employees(
	emp_no INT not null,	
	emp_title_id VARCHAR(255) not null,	
	birth_date DATE not null,
	first_name VARCHAR(255) not null,
	last_name VARCHAR(255) not null,
	sex	VARCHAR(255) not null,
	hire_date DATE not null,
	primary key (emp_no),
	foreign key (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INT not null,
	dept_no VARCHAR(255) not null,
	foreign key (emp_no) REFERENCES employees(emp_no),
	foreign key (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(255) not null,
	emp_no INT not null,
	foreign key (emp_no) REFERENCES employees(emp_no),
	foreign key (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no INT not null,
	salary int not null,
	foreign key (emp_no) REFERENCES employees(emp_no)
);
