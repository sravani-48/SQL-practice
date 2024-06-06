CREATE DATABASE xyz_company;
USE xyz_company;
CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(100),
  salary INT
);

INSERT INTO employee
  (id,name,salary)
VALUES
  (1,"adm',25000),
  (2,"bob",30000),
  (3,"case"40000);

SELECT * FROM employee;
