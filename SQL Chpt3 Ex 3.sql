SELECT
	CONCAT(VendorContactLName, ', ', VendorContactFName)
FROM Vendors
Order By VendorContactLName, VendorContactFName;