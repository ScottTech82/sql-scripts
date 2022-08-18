SELECT
	CONCAT(VendorContactLName, ', ', VendorContactFName)
FROM Vendors
WHERE (VendorContactLName LIKE 'A%')
	OR (VendorContactLName LIKE 'B%')
	OR (VendorContactLName LIKE 'C%')
	OR (VendorContactLName LIKE 'E%')
Order By VendorContactLName, VendorContactFName;