use master;

DROP DATABASE if exists Bootcamp;

CREATE DATABASE Bootcamp;

use bootcamp;

Create Table Students (
    StudentID int NOT NULL Primary Key Identity(1, 1),
    FirstName varchar(30) Not Null,
    LastName varchar(60) Not Null,
    City varchar(60) Not Null,
    StateCode char(2) Not Null,
    Phone varchar(60) Not Null,
    Email varchar(100) Null,
    DateOfBirth date Not Null 
);

Create Table GraduationRequirements (
    ID int Not Null Primary Key Identity(1, 1),
    StudentID int Not Null Foreign Key References Students(StudentID),
    Topic varchar(60) Not Null,
    Score int Null,
    DateTaken date Null,
);

