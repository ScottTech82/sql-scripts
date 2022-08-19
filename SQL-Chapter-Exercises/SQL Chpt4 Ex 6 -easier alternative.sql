SELECT Distinct VendorID, VendorName, 
	Concat(VendorContactFName, ' ', VendorContactLName) as Name
FROM Vendors
ORDER BY Name;