Use master;

Drop Database if exists Prs;

Create Database Prs;

Use Prs;

Create Table Users (
	ID int Not Null Primary Key Identity(1,1),
	Username varchar(30) Not Null Unique,
	Password varchar(30) Not Null,
	FirstName varchar(30) Not Null,
	LastName varchar(30) Not Null,
	Phone varchar(12) Null,
	Email varchar(255) Null,
	IsReviewer bit,
	IsAdmin bit
);

Create Table Vendor (
	ID int not Null Primary Key Identity(1,1),
	Code varchar(30) not Null Unique,
	Name varchar(30) not Null,
	Address varchar(30) not null,
	City varchar(30) not null,
	State char(2) not null,
	Zip char(5) not null,
	Phone varchar(12) Null,
	Email varchar(255) Null
);

Create Table Product (
	ID int not null Primary Key Identity(1,1),
	PartNbr varchar(30) not null Unique,
	Name varchar(30) not null,
	Price decimal(11,2) not null,
	Unit varchar(30) not null,
	PhotoPath varchar(255) Null,
	VendorID int not Null Foreign Key References Vendor(ID)
);

Create Table Request (
	ID int not null Primary Key Identity(1,1),
	Description varchar(80) not null,
	Justification varchar(80) not null,
	RejectionReason varchar(80) Null,
	DeliveryMode varchar(20) not null default 'Pickup',
	Status varchar(10) not null default 'NEW',
	Total decimal(11,2) not null default 0,
	UserID int not null Foreign Key References Users(ID)
);

Create Table RequestLine (
	ID int not null Primary Key Identity(1,1),
	RequestID int not null foreign key references Request(ID),
	ProductID int not null foreign key references Product(ID),
	Quantity int not null default 1
);


INSERT Users
(Username, Password, Firstname, LastName, IsReviewer, IsAdmin)
VALUES
('Fred22', 'password1234', 'Fred', 'Phence', 1, 1),
('Bob33', 'bobsworld123', 'Bob', 'Johnson', 1, 1),
('Jimbo11', 'Jimiscool4', 'Jim', 'Smith', 1, 1)

INSERT Vendor
(Code, Name, Address, City, State, Zip)
VALUES
('XT154', 'FedEx', '111 Main St', 'Toledo', 'OH', '55651'),
('VT133', 'UPS', '55 S. Main St', 'Moon Twp', 'PA', '15231'),
('A1NM45', 'MSI', '1 N. MSI Lane', 'Jacksonville', 'FL', '66511')

INSERT Product
(PartNbr, Name, Price, Unit, VendorID)
VALUES
('112', 'Part1', 25.99, '25.99 each', 1),
('123', 'Part2', 75.99, '75.99 each', 2),
('221', 'Part3', 99.99, '99.99 each', 3)

INSERT Request
(Description, Justification, DeliveryMode, Status, Total, UserID)
VALUES
('a thing of 1', 'because', default, default, 253.11, 1),
('a different thing', 'why not', default, default, 1345.33, 2),
('The other thing', 'who knows', default, default, 971.86, 3)

INSERT RequestLine
(RequestID, ProductID, Quantity)
VALUES
(1, 2, default),
(1, 3, default),
(1, 4, default),
(2, 2, default),
(2, 3, default),
(2, 4, default),
(3, 2, default),
(3, 3, default),
(3, 4, default)



