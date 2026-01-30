CREATE TABLE Students (
    Roll_no NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER(3),
    Phone_no NUMBER(10),
    Dept VARCHAR2(30)
);

CREATE TABLE Courses (
    Course_ID NUMBER PRIMARY KEY,
    Course_Name VARCHAR2(50),
    Credits NUMBER(2)
);

ALTER TABLE Students
ADD City VARCHAR2(30);

ALTER TABLE Students
ADD Semester NUMBER(3);

ALTER TABLE Students
RENAME COLUMN Phone_no TO Mobile_No;

DROP TABLE Courses;

INSERT INTO Students
(Roll_no, Name, Age, Mobile_No, Dept, City, Semester)
VALUES
(101, 'mukesh', 20, 9798839328, 'CSE', 'Patna', 3);

INSERT INTO Students VALUES
(102, 'deepak', 21, 9123456780, 'CSE', 'Delhi', 4);

INSERT INTO Students VALUES
(103, 'pappu', 19, 9988776655, 'ECE', 'Kolkata', 2);

INSERT INTO Students VALUES
(104, 'prakash', 22, 9090909090, 'IT', 'Mumbai', 5);

INSERT INTO Students VALUES
(105, 'neha', 23, 8899776655, 'ME', 'Bhopal', 6);

SELECT * FROM Students;

SELECT Roll_no, Name FROM Students;

SELECT * FROM Students
WHERE Dept = 'CSE';

SELECT * FROM Students
WHERE Age > 20;

UPDATE Students
SET Dept = 'ECE'
WHERE Roll_no = 101;

UPDATE Students
SET City = 'Patna'
WHERE Name = 'Rahul';

UPDATE Students
SET Age = Age + 1;

DELETE FROM Students
WHERE Roll_no = 105;