SELECT
	CONCAT(VendorContactLName, ', ', VendorContactFName)
FROM Vendors
WHERE VendorContactLName BETWEEN 'A%' and 'F%'
Order By VendorContactLName, VendorContactFName;