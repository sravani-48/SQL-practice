CREATE DATABASE college;
USE college;

CREATE TABLE student (
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

INSERT INTO student
  (rollno.name,marks,grade,city)
VALUES
  (101,"anil",78,"C","pune"),
  (102,"bhum",93,"A","Mumbai"),
  (103,"chetan",85,"B","Mumbai"),
  (104,"dhurav",96,"A","Delhi"),
  (105,"eman",15,"F","Delhi"),
  (106,"farah",82,"B","Delhi");

SELECT * FROM student;

SELECT * 
FROM student
WHERE marks > 80;

SELECT * FROM student WHERE marks +10 > 80; \\ARITHMATIC OPERATOR +,-,*,/,%
SELECT * FROM student WHERE city = Mumbai;   \\comparision operator =,!=,>,>=,<,<=

SELECT * FROM student WHERE marks > 80 AND city = "Mumbai"; \\Logical AND
SELECT * FROM student WHERE marks > 90 OR city = "Mumbai";   \\Logical OR
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;         \\Between operator
SELECT * FROM student WHERE city IN ("Delhi","Mumbai");       \\IN operator
SELECT * FROM student WHERE city NOT IN ("Delhi","Mumbai");    \\NOT IN operator

SELECT * FROM student LIMIT 3;    \\Limit clause

SELECT * FROM student
ORDER BY city ASC;      \\Order by asccending (ASC) Desending (DESC)

\\Aggregate functions(MAX,MIN,COUNT,SUM,AVG)
SELECT max(marks)
FROM student;

SELECT city,count(name)     \\Group by clause
FROM student
GROUP BY city;

SELECT count(name), city     \\Having clause
FROM student
GROUP BY city
HAVING max(marks) > 90;






