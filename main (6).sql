--create database railway reservation system;
create table train_details (
id int primary key,
train_no varchar(50),
train_name varchar(50),
start_place varchar(50),
destination varchar(50)
);


create table availability(
id int primary key,
train_no varchar(50),
class varchar(50),
start_place varchar(50),
destination varchar(50),
no_of_seats varchar(50)
);

insert into train_details(id,train_no,train_name,start_place,destination)
values
(1,'RJD16','rajadhani express','banglore','mumbai'),
(2,'UDE04','udhyan express','chennai','hyderbad'),
(3,'KKE55','karnataka express','banglore','chennai'),
(4,'CSE3','shivaji express','coimbatore','banglore'),
(5,'JNS8','janashatabdi','banglore','salem');

insert into availability(id,train_no,class,start_place,destination,no_of_seats)
values
(1,'RJD16','sleeper class','banglore','mumbai','15'),
(2,'UDE04','first class','chennai','hyderbad','22'),
(3,'KKE55','first class AC','banglore','chennai','15'),
(4,'CSE3','second class','coimbatore','banglore','8'),
(5,'JNS8','sleeper class','banglore','salem','18');




CREATE VIEW sleeper AS
SELECT train_no, start_place, destination
FROM availability
WHERE class = 'sleeper class';


INSERT INTO train_details (id, train_no, train_name, start_place, destination)
VALUES (6, 'MNO15', 'Mangala Express', 'Mangalore', 'Chennai');


UPDATE train_details
SET destination = 'Mangalore'
WHERE train_no = 'RJD16';


DELETE FROM train_details
WHERE train_no = 'KKE55';




CREATE VIEW details AS
SELECT train_details.train_no, train_details.train_name, availability.class
FROM train_details
INNER JOIN availability ON train_details.train_no = availability.train_no;




CREATE VIEW total_seat AS
SELECT train_no, start_place, COUNT(*) as total_seats
FROM availability
GROUP BY start_place, train_no;



INSERT INTO total_seat(train_no, start_place, total_seats)
VALUES ('ABC123', 'Delhi', 50);




UPDATE total_seat
SET start_place = 'Hubli'
WHERE train_no = 'JNS58';




DELETE FROM total_seat
WHERE rowid = (SELECT MAX(rowid) FROM total_seat);





ALTER VIEW sleeper RENAME TO class;



DROP VIEW details;




