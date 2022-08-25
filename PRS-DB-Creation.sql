Use master;

Drop Database if exists Prs;

Create Database Prs;

GO

Use Prs;

Create Table Users (
	ID int Not Null Primary Key Identity(1,1),
	Username varchar(30) Not Null Unique,
	Password varchar(30) Not Null,
	FirstName varchar(30) Not Null,
	LastName varchar(30) Not Null,
	Phone varchar(12) Null,
	Email varchar(255) Null,
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0
);

Create Table Vendors (
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

Create Table Products (
	ID int not null Primary Key Identity(1,1),
	PartNbr varchar(30) not null Unique,
	Name varchar(30) not null,
	Price decimal(11,2) not null,
	Unit varchar(30) not null default 'Each',
	PhotoPath varchar(255) Null,
	VendorID int not Null Foreign Key References Vendors(ID)
);

Create Table Requests (
	ID int not null Primary Key Identity(1,1),
	Description varchar(80) not null,
	Justification varchar(80) not null,
	RejectionReason varchar(80) Null,
	DeliveryMode varchar(20) not null default 'Pickup',
	Status varchar(10) not null default 'NEW',
	Total decimal(11,2) not null default 0,
	UserID int not null Foreign Key References Users(ID)
);

Create Table RequestLines (
	ID int not null Primary Key Identity(1,1),
	RequestID int not null foreign key references Requests(ID),
	ProductID int not null foreign key references Products(ID),
	Quantity int not null default 1
);

GO

--Add Users
INSERT Users
(Username, Password, Firstname, LastName, IsReviewer, IsAdmin)
VALUES
('sa', 'sa', 'Systems', 'Admin', 1, 1),
('rv', 'rv', 'Systems', 'Reviewer', 1, 0),
('us', 'us', 'Systems', 'User', 0, 0),
('Fred22', 'password1234', 'Fred', 'Phence', 0, 0),
('Bob33', 'bobsworld123', 'Bob', 'Johnson', 0, 0),
('Jimbo11', 'Jimiscool4', 'Jim', 'Smith', 0, 0)

--Add Vendors
INSERT Vendors
(Code, Name, Address, City, State, Zip)
VALUES
('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '98765'),
('FedEx', 'Federal Express', '111 Main St', 'Toledo', 'OH', '55651'),
('UPS', 'United Postal Service', '55 S. Main St', 'Moon Twp', 'PA', '15231'),
('MSFT', 'Microsoft', '1 Microsoft Drive', 'Redmond', 'WA', '98756'),
('BBUY', 'BestBuy', '1 Best Buy St', 'Atlanta', 'GA', '74745')

INSERT Products
(PartNbr, Name, Price, VendorID)
VALUES
('Echo', 'Echo Std', 100, (SELECT ID From Vendors WHERE Code = 'AMAZ')),
('EchoDot', 'Echo Dot', 50, (SELECT ID From Vendors WHERE Code = 'AMAZ')),
('EchoShow5', 'Echo Show 5', 150, (SELECT ID From Vendors WHERE Code = 'AMAZ')),
('EchoShow8', 'Echo Show 8', 200, (SELECT ID From Vendors WHERE Code = 'AMAZ'))





