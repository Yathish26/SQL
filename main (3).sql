--create database lab;
create table equipment_details (
id INT PRIMARY KEY,
itemname varchar(50),
costperitem varchar(50),
quantity varchar(50),
dateofpurchase varchar(50),
warranty varchar(50),
operational varchar(50)
);

insert into equipment_details(id,itemname,costperitem,quantity,dateofpurchase,warranty,operational)
values (1,'computer','30000','9','21/5/07','2','7'),
(2,'printer','5000','3','21/5/06','4','2'),
(3,'scanner','8000','1','29/8/08','3','1'),
(4,'camera','7000','2','13/6/05','1','2'),
(5,'UPS','15000','5','21/5/08','1','4'),
(6,'hub','8000','1','31/10/08','2','1'),
(7,'plotter','25000','2','11/1/09','2','2');


SELECT itemname FROM equipment_details WHERE DATE(dateofpurchase, 'DD/MM/YY') > DATE('31/10/07', 'DD/MM/YY');



UPDATE equipment_details SET warranty = CAST(warranty AS INTEGER) + 6;


SELECT itemname, dateofpurchase, 
       DATEDIFF(CURRENT_DATE(), STR_TO_DATE(dateofpurchase, '%d/%m/%Y'))/30 AS months_since_purchase
FROM equipment_details


SELECT itemname, dateofpurchase 
FROM equipment_details
WHERE quantity > 3
ORDER BY STR_TO_DATE(dateofpurchase, '%d/%m/%Y') ASC;



SELECT COUNT(*) AS num_items, AVG(costperitem) AS avg_cost
FROM equipment_details
WHERE STR_TO_DATE(dateofpurchase, '%d/%m/%Y') < '01-01-2008';


SELECT MIN(warranty) AS min_warranty, MAX(warranty) AS max_warranty
FROM equipment_details;


