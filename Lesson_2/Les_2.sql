CREATE DATABASE example;
USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название'
) COMMENT = 'Пример';

INSERT INTO users VALUES
  (DEFAULT, 'Иванов'),
  (DEFAULT, 'Петров'),
  (DEFAULT, 'Сидоров');
 
 #mysqldump example > example.sql;
CREATE DATABASE sumple;
 #mysql < example.sql;
  
 