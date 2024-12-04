--create database studentdatabse;
create table student (
  id INT PRIMARY KEY,
  name varchar(50),
  regno varchar(50),
  class varchar(50),
  major varchar(50)
  );
  
  create table course (
    id INT PRIMARY KEY,
    coursename varchar(50),
    coursenumber varchar(50),
    credithours varchar(50),
    department varchar(50)
    );
    
    create table section (
    id INT PRIMARY KEY,
    sectionidentifier varchar(50),
    coursenumber varchar(50),
    year varchar(50),
    instructor varchar(50)
    );
    
    create table grade_report (
    id INT PRIMARY KEY,
    regno varchar(50),
    section_identifier varchar(50),
    grade varchar(50)
    );
    
    insert into student (id,name, regno,class, major)
    values(1,'smith','17','1','CS'),
          (2,'brown','8','2','CS');
          
    insert INTO course (id,coursename,coursenumber,credithours,department)
           values (1,'intro to comp','cs1310','4','cs'),
                  (2,'data structure','cs3320','4','cs'),
                  (3,'discrete math','math2410','3','math'),
                  (4,'database','cs3380','3','cs');
                  
                  
    insert into section(id,sectionidentifier,coursenumber,year,instructor)
            values (1,'85','math2410','98','king'),
                   (2,'92','cs1310','98','adreson'),
                   (3,'102','cs3320','99','knuth'),
                   (4,'112','math2410','99','chang'),
                   (5,'119','cs3380','99','stone');
                   
    insert into grade_report(id,regno,section_identifier,grade)
                  values(1,'17','112','b'),
                        (2,'17','119','c'),
                        (3,'8','119','a');
                  
         alter table section
         add section varchar(50);
         
         update section
         set section = 'A'
         where ID = 1;
                  
                  
       delete from student
       where id = 2;
       
       
      drop table section;
    
    
    
    select * from student;
    select id, name, regno from student;