DROP DATABASE IF EXISTS college;

CREATE DATABASE college;

USE college;

CREATE TABLE employee (
    empID INT,
    firstname VARCHAR(10),
    lastname VARCHAR(10),
    empAge INT,
    empzone VARCHAR(10)
);

DESC employee;

INSERT INTO employee
(empID, firstname, lastname, empAge, empzone)
VALUES
(101, 'ayush', 'bhoir', 22, 'north'),
(102, 'dipesh', 'kokate', 22, 'south'),
(103, 'sahil', 'ambolkar', 22, NULL);

SELECT * FROM employee;

UPDATE employee 