--create database subject;
create table physics (
id int primary key,
regno varchar(50),
name varchar(50),
year varchar(50),
combination varchar(50)
);

create table computerscience (
id int primary key,
regno varchar(50),
name varchar(50),
year varchar(50),
combination varchar(50)
);


insert into physics(id,regno,name,year,combination)
values(1,'AJ00325','ashwin','first','pcm'),
(2,'AJ00225','swaroop','second','PMCs'),
(3,'AJ00385','sarika','third','PME'),
(4,'AJ00388','hamsa','first','PMCs');


insert into computerscience(id,regno,name,year,combination)
values(1,'AJ00225','swaroop','second','PMCs'),
(2,'AJ00296','tajas','second','BCA'),
(3,'AJ00112','geetha','first','BCA'),
(4,'AJ00388','hamsa','first','PMCs');



SELECT * FROM physics
UNION ALL
SELECT * FROM computerscience;



SELECT * FROM physics
INNER JOIN computerscience
ON physics.regno = computerscience.regno;



SELECT * FROM physics
WHERE year = 'second'
UNION ALL
SELECT * FROM computerscience
WHERE year = 'second';


SELECT p.regno, p.name, p.year, p.combination FROM physics p
INNER JOIN computerscience c
ON p.regno = c.regno;



SELECT * FROM physics
WHERE regno NOT IN (SELECT regno FROM computerscience);



SELECT * FROM computerscience
WHERE regno NOT IN (SELECT regno FROM physics);



SELECT * FROM physics
WHERE combination = 'PMCs'
UNION ALL
SELECT * FROM computerscience
WHERE combination = 'PMCs';




SELECT * FROM physics
WHERE combination = 'BCA'
UNION ALL
SELECT * FROM computerscience
WHERE combination = 'BCA';




SELECT * FROM physics
WHERE year = 'third'
UNION ALL
SELECT * FROM computerscience
WHERE year = 'third';



ALTER TABLE computerscience RENAME TO CS;







