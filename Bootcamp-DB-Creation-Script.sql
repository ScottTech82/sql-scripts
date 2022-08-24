use master;

DROP DATABASE if exists Bootcamp;

CREATE DATABASE Bootcamp;

use bootcamp;

Create Table Students (
    StudentID int NOT NULL Primary Key Identity(1, 1),
    FirstName varchar(30) Not Null,
    LastName varchar(60) Not Null,
    City varchar(60) Not Null,
    StateCode char(2) Not Null DEFAULT 'OH',
    Phone varchar(60) Not Null UNIQUE,
    Email varchar(100) Null,
    DateOfBirth date Not Null 
);

Create Table GraduationRequirements (
    ID int Not Null Primary Key Identity(1, 1),
    StudentID int Not Null Foreign Key References Students(StudentID),
    Topic varchar(60) Not Null,
    Score int Null CHECK (Score >= 0 AND Score <= 120),
    DateTaken date Null,
);

INSERT Students
(FirstName, LastName, City, StateCode, Phone, DateofBirth)
VALUES
('Ian', 'X', 'Mason', 'OH', '555-555-5551', '1982-1-25'),
('James', 'X', 'New York', 'NY', '555-555-5552', '1988-2-05'),
('Karl', 'X', 'Cincinnati', 'OH', '555-555-5553', '1982-3-15'),
('Sam', 'X', 'Mason', 'OH', '555-555-5554', '1989-4-16'),
('Jack', 'X', 'Dallas', 'TD', '555-555-5555', '1992-5-19'),
('Billy', 'X', 'Thousand Oaks', 'CA', '555-555-5556', '1981-6-01'),
('Caleb', 'X', 'Miami', 'FL', '555-555-5557', '1991-12-08'),
('Josh', 'X', 'Pittsburgh', 'PA', '555-555-5558', '1982-10-02')

INSERT GraduationRequirements
(StudentID, Topic)
VALUES
((SELECT StudentID FROM Students WHERE FirstName = 'Jack'), 'Git/GitHub'),
(1, 'SQL'),
(1, 'C#'),
(1, 'JavaScript'),
(1, 'Angular'),
(1, 'Capstone'),
(2, 'Git/GitHub'),
(2, 'SQL'),
(2,'C#'),
(2, 'JavaScript'),
(2, 'Angular'),
(2, 'Capstone'),
(3, 'Git/GitHub'),
(3, 'SQL'),
(3, 'C#'),
(3, 'JavaScript'),
(3, 'Angular'),
(3, 'Capstone'),
(4, 'Git/GitHub'),
(4, 'SQL'),
(4, 'C#'),
(4, 'JavaScript'),
(4, 'Angular'),
(4, 'Capstone'),
(5, 'Git/GitHub'),
(5, 'SQL'),
(5, 'C#'),
(5, 'JavaScript'),
(5, 'Angular'),
(5, 'Capstone'),
(6, 'Git/GitHub'),
(6, 'SQL'),
(6, 'C#'),
(6, 'JavaScript'),
(6, 'Angular'),
(6, 'Capstone'),
(7, 'Git/GitHub'),
(7, 'SQL'),
(7, 'C#'),
(7, 'JavaScript'),
(7, 'Angular'),
(7, 'Capstone'),
(8, 'Git/GitHub'),
(8, 'SQL'),
(8, 'C#'),
(8, 'JavaScript'),
(8, 'Angular'),
(8, 'Capstone');
