
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name  VARCHAR NOT NULL
);

CREATE TABLE employees (
 emp_no INTEGER PRIMARY KEY,
 emp_title_id VARCHAR NOT NULL,
 birth_date DATE NOT NULL,
 first_name VARCHAR NOT NULL,
 last_name  VARCHAR NOT NULL,
 sex VARCHAR NOT NULL,
 hire_date DATE NOT NULL,
 FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_MANAGER (
  dept_no  VARCHAR NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
  
);

CREATE TABLE dept_emp (
 emp_no INTEGER NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 dept_no  VARCHAR NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
  
);


CREATE TABLE titles (
  title_id VARCHAR NOT NULL,
  FOREIGN KEY (title_id) REFERENCES employees(emp_title_id),
  title VARCHAR NOT NULL,
  PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
 emp_no INTEGER NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 salary INTEGER NOT NULL
);
