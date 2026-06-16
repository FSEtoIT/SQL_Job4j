CREATE TABLE first_table(
    id serial PRIMARY KEY,
    name VARCHAR(255),
    title TEXT,
    age INTEGER
);

INSERT INTO first_table (name, title, age) 
VALUES ('Andrey', 'Student', '37');

SELECT * FROM first_table;

UPDATE first_table SET name = 'Petr';
UPDATE first_table SET title = 'Mentor';
UPDATE first_table SET age = '36';

SELECT * FROM first_table;

DELETE from first_table;

SELECT * FROM first_table;