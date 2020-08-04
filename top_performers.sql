-- PROBLEM: You have a table with columns for id, name, and score. Write a query that returns the id and names of the top 3 performers.

CREATE DATABASE people;

USE people;

CREATE TABLE scores(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  score INT
);

INSERT INTO scores (name, score)
VALUES('Bobby', 40),
      ('Ricky', 50),
      ('Tangerine', 100),
      ('Primrose', 99),
      ('Destin', 20),
      ('Poppy', 80);

-- SOLUTION:
SELECT id, name FROM scores ORDER BY score DESC LIMIT 3;