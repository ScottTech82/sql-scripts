Create or Alter Procedure InvoicesForVendor
	@VendorName varchar(30) = '%'  --Parameter saying anything entered in
as
	SELECT VendorName, i.*
	FROM Vendors v JOIN Invoices i
		ON v.VendorID = i.VendorID
	WHERE VendorName LIKE @VendorName --Parameter placed down here to search by it
	ORDER BY VendorName;
go

exec InvoicesForVendor @VendorName = 'C%'; --enter in the search parameter
