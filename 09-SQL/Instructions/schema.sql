create table employees(
	emp_no numeric primary key,
	emp_title_id varchar REFERENCES titles (title_id),
	birth_date date,
	fist_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(5) not null,
	hire_date date);

alter table employees rename emp_title_id TO title_id;

select * from employees;

create table dept_emp(
	emp_no numeric references employees(emp_no),
	dept_no varchar references departments(dept_no),
	primary key (emp_no, dept_no));
	
create table dept_manager(
	dept_no varchar references departments(dept_no),
	emp_no numeric references employees(emp_no),
	primary key (dept_no, emp_no));

create table titles(
	title_id varchar primary key,
	title varchar(50) not null);

