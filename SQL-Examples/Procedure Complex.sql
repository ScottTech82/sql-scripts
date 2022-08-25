
Create or Alter Procedure AddProduct
	@PartNbr varchar(30) = NULL,
	@Name varchar(30) = NULL,
	@Price decimal(9,2) = 10,
	@VendorCode varchar(30) = NULL

as
	IF @PartNbr is NULL
		return -1;
	IF @Name is Null
		return -2;
	IF @VendorCode is Null
		return -3;
	
	Declare @VendorID int;

	SELECT @VendorID = ID 
		FROM Vendors
		WHERE Code = @VendorCode

	IF @VendorID is Null
		return -4;

	INSERT dbo.Products (PartNbr, Name, Price, VendorID) VALUES
					(@PartNbr, @Name, @Price, @VendorID);
	return 0;
GO

DECLARE @rc int;
EXEC @rc = AddProduct @PartNbr = 'FireCube', @Name='Fire TV Cube', @Price=175, @VendorCode='AMAZX';
PRINT 'Return Code is' + STR(@rc);