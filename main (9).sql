SELECT customers.name, handsets.model, connections.connection, connections.validity
FROM customers
JOIN connections ON customers.customer_id = connections.customer_id
JOIN handsets ON connections.handset_id = handsets.handset_id;




SELECT handsets.model, connections.connection_id, connections.activation_date
FROM handsets
LEFT JOIN connections ON handsets.handset_id = connections.handset_id;




SELECT connections.connection_id, handsets.model, purchases.purchase_date
FROM connections
JOIN handsets ON connections.handset_id = handsets.handset_id
LEFT JOIN purchases ON handsets.handset_id = purchases.handset_id;




SELECT h.*
FROM handsets h
JOIN prices p ON h.handset_id = p.handset_id
WHERE p.price > (SELECT MAX(price) FROM prices WHERE handset_id IN (SELECT handset_id FROM handsets WHERE brand = 'Samsung'));




SELECT c.name, h.model, con.connection_id, con.validity
FROM customers c
JOIN connections con ON c.customer_id = con.customer_id
JOIN handsets h ON con.handset_id = h.handset_id
WHERE con.validity >= DATEADD(year, -1, GETDATE());



SELECT c.customer_id, h.model, con.connection
FROM customers c
JOIN connections con ON c.customer_id = con.customer_id
JOIN handsets h ON con.handset_id = h.handset_id
WHERE con.connection = 'Airtel';



