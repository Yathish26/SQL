--create database library;
create table books (
id INT PRIMARY KEY,
book_id varchar(50),
book_name varchar(50),
author_name varchar(50),
publishers varchar(50),
price varchar(50),
genre varchar(50),
category varchar(50),
quantity varchar(50)
);

 
 create table Issued (
 id INT PRIMARY KEY,
 Book_id varchar(50),
 quantity_issued varchar(50)
 );
 
 insert into books (id,Book_id,book_name,author_name,publishers,price,genre,quantity)
 values(1,'C0001','The klone and I','lata kappor','EPP','355','novel','5'),
 (2,'F0001','The Tears','william hopkins','first publ','650','fiction','20'),
 (3,'T0001','myfirstc++','brain & brooke','erp','350','text','10'),
 (4,'T0002','C++ brainworks','A.w rossaine','TDH','350','text','15'),
 (5,'F0002','thunderbolts','ana robert','first publ','750','fiction','50');
 
 insert into Issued(id,Book_id,quantity_issued)
 values(1,'T0001','2'),
       (2,'C0001','5'),
       (3,'F0001','2'),
       (4,'T0002','5'),
       (5,'F0002','8');
       
       
SELECT book_name, author_name, price
FROM books
WHERE publishers = 'first publ';   

SELECT book_id, book_name, publishers 
FROM books 
WHERE quantity > 8 AND price < 500;


SELECT book_id, book_name, author_name 
FROM books 
WHERE publishers <> 'erp';


SELECT b.book_id, b.book_name, b.publishers, b.price, i.quantity_issued,
    (b.price * i.quantity_issued * 0.04) AS vat_total,
    (b.price * i.quantity_issued * 1.04) AS total
FROM books b
JOIN Issued i ON b.book_id = i.Book_id;


SELECT * FROM books WHERE book_id IN ('C0001', 'T0002', 'F0002');


SELECT * FROM books WHERE genre NOT IN ('novel', 'fiction');


SELECT * FROM books WHERE author_name LIKE 'A%';


SELECT * FROM books WHERE author_name LIKE 'T%S';


SELECT books.book_id, books.book_name, books.author_name, Issued.quantity_issued 
FROM books 
INNER JOIN Issued 
ON books.book_id = Issued.Book_id;


SELECT book_name, author_name, price 
FROM books 
ORDER BY book_name ASC, price DESC;




       
       