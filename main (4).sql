SELECT MOD(165.16, 1);


SELECT SQRT(5000);


SELECT ROUND(128.3285, 2);
SELECT ROUND(128.3285, -1);


SELECT ROUND(92.7683, 2);
SELECT ROUND(92.7683, -1);



SELECT UPPER('department');
SELECT LOWER('department');



SELECT CONCAT(UPPER(SUBSTRING('123 example street', 1, 1)), LOWER(SUBSTRING('123 example street', 2, INSTR('123 example street', ' ') - 2 + 1)), ' ', UPPER(SUBSTRING('123 example street', INSTR('123 example street', ' ') + 1, 1)), LOWER(SUBSTRING('123 example street', INSTR('123 example street', ' ') + 2)))



SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers;



user_input = input("pradeepa j moolya: ")
formatted_string = user_input[:15].ljust(15, "_*")
print(formatted_string)


user_input = input("Enter a string: ")
formatted_string = user_input.rjust(20, "_#")
print(formatted_string)



SELECT LENGTH('JSS college, Mysore') AS length;



SELECT SUBSTRING('DATABASE', 4, 4) AS substring;



SELECT POSITION('O' IN 'position and length') AS position, 
       LENGTH('position and length') AS length;




SELECT REPLACE('database management system', 'databse', 'datatype') AS result;




SELECT ASCII(' ') AS ascii_value;



SELECT CHAR(42) AS character_value;




