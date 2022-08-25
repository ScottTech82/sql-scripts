Use AP;
IF OBJECT_ID('spBalanceRange') is Not Null
	DROP Proc spBalanceRange;

Go

Create Proc spBalanceRange
	@VendorVar varchar(40) = '%',
	@BalanceMax int = 0,
	@BalanceMin int = 0
AS
		SELECT VendorName, InvoiceNumber, InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
	FROM Vendors v JOIN Invoices i
		On v.VendorID = i.VendorID
	WHERE (VendorName LIKE @VendorVar)
	ORDER BY Balance desc;