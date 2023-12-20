USE SLOT10
GO

SET IDENTITY_INSERT Student ON;

INSERT INTO Student (SID, S_FName, S_LName) VALUES (12345, 'Chris', 'Rock');
INSERT INTO Student (SID, S_FName, S_LName) VALUES (23456, 'Chris', 'Farley');
INSERT INTO Student (SID, S_FName, S_LName) VALUES (34567, 'David', 'Spade');
INSERT INTO Student (SID, S_FName, S_LName) VALUES (45678, 'Liz', 'Lemon');
INSERT INTO Student (SID, S_FName, S_LName) VALUES (56789, 'Jack', 'Donaghy');

SET IDENTITY_INSERT Student OFF;

SET IDENTITY_INSERT Course ON;

INSERT INTO Course (CID, C_Name) VALUES (101001, 'Intro to Computers');
INSERT INTO Course (CID, C_Name) VALUES (101002, 'Programming');
INSERT INTO Course (CID, C_Name) VALUES (101003, 'Databases');
INSERT INTO Course (CID, C_Name) VALUES (101004, 'Websites');
INSERT INTO Course (CID, C_Name) VALUES (101005, 'IS Management');

SET IDENTITY_INSERT Course OFF;

SET IDENTITY_INSERT Course_Grades ON;

INSERT INTO Course_Grades (CGID, Semester, CID_CG, SID_CG, Grade) VALUES (2010101, 
'SP10', 101005, 34567, 'D+');
INSERT INTO Course_Grades (CGID, Semester, CID_CG, SID_CG, Grade) VALUES (2010308, 
'FA10', 101005, 34567, 'A-');
INSERT INTO Course_Grades (CGID, Semester, CID_CG, SID_CG, Grade) VALUES (2010309, 
'FA10', 101001, 45678, 'B+');
INSERT INTO Course_Grades (CGID, Semester, CID_CG, SID_CG, Grade) VALUES (2011308, 
'FA11', 101003, 23456, 'B-');
INSERT INTO Course_Grades (CGID, Semester, CID_CG, SID_CG, Grade) VALUES (2012206, 
'SU12', 101002, 56789, 'A+');

SET IDENTITY_INSERT Course_Grades Off;


--ALTER TABLE Student
--MODIFY S_FName VARCHAR(30) NOT NULL;
--ALTER TABLE Course
--DD Faculty_LName VARCHAR(30) DEFAULT 'TBD' NOT NULL;
--UPDATE Course
-- SET Faculty_LName= 'Potter', C_Name= 'Intro to Wizardry'
-- WHERE CID = 101001;
--ALTER TABLE Course 
-- CHANGE C_Name Course_Name VARCHAR(30)