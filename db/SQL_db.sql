CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE issues(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE clients_issues(
    id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(id) ON DELETE CASCADE,
    issue_id INT REFERENCES issues(id) ON DELETE CASCADE
);

INSERT INTO clients(name) VALUES
('Ivan'),
('Kirill'),
('Roman');


INSERT INTO issues(title, description) VALUES
('Can not log in to server', 'He may be tried to swith on & off his computer or wi-fi or even head-ass primary swith. Need ask more details'),
('Used AI and fucked up', 'Looks like does not understand the foundation of his class. Ask him read some books and re-do previous course'),
('CheckStyle errors', 'Invalid CREATE statement 1 / Invalid CREATE TABLE statement 1 / Invalid Table columns clause 1 / expected one of the following: ... 3 / Invalid or incomplete statement 3');

INSERT INTO clients_issues(client_id, issue_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 3);

SELECT * FROM clients_issues;
