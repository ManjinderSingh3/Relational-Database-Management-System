DROP TABLE IF EXISTS 'monitor1';
CREATE TABLE monitor1 (monitor_id INT , monitor_name VARCHAR, email VARCHAR, phoneNumber VARCHAR, PRIMARY_KEY (monitor_id));

Insert into monitor1(monitor_id, monitor_name, email, phoneNumber) values(1,Aditya,aditya@gmail.com,4567);

Insert into monitor1(monitor_id, monitor_name, email, phoneNumber) values(1,Aditya,aditya@gmail.com,4567);

DROP TABLE IF EXISTS 'student1';
CREATE TABLE student1(student_id INT NOT_NULL ,student_name VARCHAR NOT_NULL, email VARCHAR NOT_NULL, phoneNumber VARCHAR, PRIMARY_KEY (student_id), CONSTRAINT fk_monitor FOREIGN_KEY (monitor_Id) REFERENCES monitor1(ID));

CREATE TABLE monitor2 (monitor_id INT , monitor_name VARCHAR, email VARCHAR, phoneNumber VARCHAR, PRIMARY_KEY (monitor_id))

DROP TABLE IF EXISTS 'monitor2';
CREATE TABLE monitor2 (monitor_id INT , monitor_name VARCHAR, email VARCHAR, phoneNumber VARCHAR, PRIMARY_KEY (monitor_id));

DROP TABLE IF EXISTS 'student2';
CREATE TABLE student2 (student_id INT NOT_NULL ,student_name VARCHAR NOT_NULL, email VARCHAR NOT_NULL, phoneNumber VARCHAR, PRIMARY_KEY (student_id), CONSTRAINT fk_monitor FOREIGN_KEY (monitor_Id) REFERENCES monitor2(ID));

DROP TABLE IF EXISTS 'student3';
CREATE TABLE student3 (student_id INT, student_name VARCHAR, email VARCHAR, phoneNumber VARCHAR, PRIMARY_KEY (student_id),CONSTRAINT fk_monitor FOREIGN_KEY (monitor_Id) REFERENCES monitor1(ID));

DROP TABLE IF EXISTS 'student4';
CREATE TABLE student4 (student_id INT, student_name VARCHAR, email VARCHAR, PRIMARY_KEY (student_id),CONSTRAINT fk_monitor FOREIGN_KEY (monitor_Id) REFERENCES monitor2(ID));

