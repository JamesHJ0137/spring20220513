CREATE DATABASE mydb5;
USE mydb5;

CREATE TABLE Board
SELECT * FROM mydb4.Board;
CREATE TABLE Reply
SELECT * FROM mydb4.Reply;

ALTER TABLE Board
MODIFY COLUMN id INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Reply
MODIFY COLUMN id INT PRIMARY KEY  AUTO_INCREMENT;

ALTER TABLE Reply
ADD FOREIGN KEY (board_id) REFERENCES Board(id);

DESC Board;
DESC Reply;