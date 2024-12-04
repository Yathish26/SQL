--create database employeedetails;
CREATE TABLE employee (
 id INT PRIMARY KEY,
 empid varchar(50),
 firstname varchar(50),
 lastname varchar(50),
 hire_date varchar(50),
 address varchar(50),
 city varchar(50)
 );


create table empsalary(
 id INT PRIMARY KEY,
 empid varchar(50),
 salary varchar(50),
 benefits varchar(50),
 designation varchar(50)
 );
 
 
insert into employee(id,empid,firstname,lastname,hire_date,address,city)
values (1,'1001','george','smith','11-may-06','83 first street','paris'),
       (2,'1002','mary','jones','25-feb-08','842 vine ave','losantiville'),
       (3, '1012','sam','tones','12-sep-05','33 elm st','paris'),
       (4, '1015','peter','thompson','19-dec-06','11 red road','paris'),
       (5, '1016','sarath','sharma','22-aug-07','440 MG road','new delhi'),
       (6, '1020','monika','gupta','07-jin-08','9 bandra', 'mumbai');


insert into empsalary(id,empid,salary,benefits,designation)
       values(1,'1001','10000','3000','manager'),
             (2, '1002','8000','1200','salesman'),
             (3, '1012','20000','5000','director'),
             (4, '1015','6500','1300','clerk'),
             (5, '1016','6000','1000','clerk'),
             (6, '1020','8000','1200','salesman');
             
             
SELECT firstname, lastname, address, city FROM employee WHERE city = 'paris';


SELECT * FROM employee ORDER BY firstname DESC;


SELECT e.firstname, s.salary
   FROM employee e
   JOIN empsalary s ON e.empid = s.empid
   WHERE s.designation = 'salesman';


SELECT e.firstname, e.lastname, (CAST(s.salary AS INT) + CAST(s.benefits AS INT)) AS total_salary
   FROM employee e
   JOIN empsalary s ON e.empid = s.empid;


SELECT firstname, lastname
    FROM employee
    WHERE hire_date <= DATE('now', '-1 year');


SELECT COUNT(DISTINCT designation) AS num_designations
     FROM empsalary;


SELECT *
FROM employee
WHERE LENGTH(firstname) = 6 AND LENGTH(lastname) = 6;


ALTER TABLE employee
ADD COLUMN phone_no varchar(50);
UPDATE employee
SET phone_no = '555-1234'
WHERE empid = '1001';


SELECT firstname, lastname
FROM employee
WHERE hire_date < '15-jun-08' AND hire_date > '16-jun-07';


SELECT firstname, lastname, salary, benefits,
       (salary * 0.5) as HRQ,
       (salary * 0.3) as DA,
       (salary * 0.12) as PF,
       (salary + benefits + (salary * 0.5) + (salary * 0.3) - (salary * 0.12)) as gross
FROM employee
INNER JOIN empsalary ON employee.empid = empsalary.empid
ORDER BY gross DESC;

       