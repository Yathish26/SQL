--create database bank system;
create table account (
id int primary key,
account_no varchar(50),
cust_name varchar(50),
branch_id varchar(50)
);

create table branch (
id  int primary key,
branch_id varchar(50),
branch_name varchar(50),
branch_city varchar(50)
);

create table depositor(
id int primary key,
account_no varchar(50),
branch_id varchar(50),
balance varchar(50)
);

create table loan (
id  int primary key,
account_no varchar(50),
branch_id varchar(50),
balance varchar(50)
);

insert into account (id,account_no,cust_name,branch_id)
values(1,'AE0012856','reena','SB002'),
(2,'AE1185698','akhil','SB001'),
(3,'AE1203996','daniel','SB004'),
(4,'AE1225889','roy','SB002'),
(5,'AE8532166','sowparnika','SB003'),
(6,'AE8552266','anil','SB003'),
(7,'AE1003996','saathwik','SB004'),
(8,'AE1100996','swarna','SB002');


insert into branch (id,branch_id,branch_name,branch_city)
values(1,'SB001','malleshwarm','banglore'),
(2,'SB002','MG Road','banglore'),
(3,'SB003','MG road','mysore'),
(4,'SB004','Jainagar','mysore');



insert into depositor(id,account_no,branch_id,balance)
values(1,'AE0012856','SB002','12000'),
(2,'AE1203996','SB004','58900'),
(3,'AE8532166','SB003','40000'),
(4,'AE1225889','SB002','150000');



insert into loan (Id,account_no,branch_id,balance)
values(1,'AE1185698','SB001','102000'),
(2,'AE8552266','SB003','40000'),
(3,'AE1003996','SB004','15000'),
(4,'AE1100996','SB002','100000');




SELECT branch_name, COUNT(account_no) as total_accounts
FROM account
JOIN branch ON account.branch_id = branch.branch_id
GROUP BY branch_name;



SELECT branch_name, SUM(balance) as total_loan_amount
FROM loan
JOIN branch ON loan.branch_id = branch.branch_id
GROUP BY branch_name;



SELECT branch_name, SUM(balance) as total_deposited_amount
FROM depositor
JOIN branch ON depositor.branch_id = branch.branch_id
GROUP BY branch_name
ORDER BY total_deposited_amount DESC;




SELECT branch_city, MAX(balance) as max_loan_amount, MIN(balance) as min_loan_amount
FROM loan
JOIN branch ON loan.branch_id = branch.branch_id
GROUP BY branch_city;




SELECT branch_name, branch_city, AVG(balance) as avg_deposit_amount
FROM depositor
JOIN branch ON depositor.branch_id = branch.branch_id
GROUP BY branch_name, branch_city;




SELECT branch_name, MAX(balance) as max_loan_amount
FROM loan
JOIN branch ON loan.branch_id = branch.branch_id
WHERE balance > 25000
GROUP BY branch_name;



SELECT branch_city, COUNT(*) as total_accounts
FROM account
JOIN branch ON account.branch_id = branch.branch_id
GROUP BY branch_city;



SELECT *
FROM account
JOIN branch ON account.branch_id = branch.branch_id
ORDER BY account.branch_id ASC;



UPDATE depositor
SET balance = 26000
WHERE account_no = 'AE1003996';




SELECT cust_name, branch_name
FROM account
JOIN branch ON account.branch_id = branch.branch_id;
