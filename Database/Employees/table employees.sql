CREATE TABLE employees(
   employee_id BIGSERIAL PRIMARY KEY NOT NULL,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   department_id INT,	
   afm VARCHAR(9)  NOT NULL,
   dob DATE NOT NULL,
   UNIQUE (afm),	
   FOREIGN KEY (department_id) REFERENCES department(department_id)
);