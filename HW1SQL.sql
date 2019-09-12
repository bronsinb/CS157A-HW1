CREATE DATABASE cs157a;
USE cs157a;
CREATE TABLE student(id int(9), name varchar(40), grade int(2), school varchar(50));
INSERT INTO student (id, name, grade, school) values (0, "Bronsin Benyamin", 12, "Gunderson High School");
INSERT INTO student (id, name, grade, school) values (1, "John Doe", 6, "San Jose Middle School");
INSERT INTO student (id, name, grade, school) values (2, "James Bond", 11, "007 High School");
SELECT * FROM student;