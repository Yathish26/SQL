SELECT Orders.*
FROM Orders
INNER JOIN Publications ON Orders.PublicationID = Publications.ID
INNER JOIN Persons ON Orders.PersonID = Persons.ID
WHERE Publications.Location = (SELECT Location FROM Publications WHERE ID = Persons.PublicationID)




SELECT *
FROM Books
WHERE price = (SELECT MAX(price) FROM Books);



SELECT *
FROM Books
WHERE quantity = 25;



SELECT Authors.*
FROM Authors
INNER JOIN Publications ON Authors.id = Publications.AuthorID
WHERE Publications.Publisher = 'PHI';




SELECT Books.*
FROM Books
INNER JOIN Categories ON Books.CategoryID = Categories.ID
WHERE Categories.Name = 'CSE';




SELECT Authors.*
FROM Authors
INNER JOIN Publications ON Authors.id = Publications.AuthorID
WHERE Publications.Country = 'India';




SELECT Books.*
FROM Books
WHERE (
  SELECT COUNT(*) 
  FROM Orders 
  WHERE BookID = Books.id
) < 20;

