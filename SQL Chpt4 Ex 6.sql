SELECT DISTINCT Vendors1.VendorID, Vendors1.VendorName,
	CONCAT (Vendors1.VendorContactFName, ' ', Vendors1.VendorContactLName) as Name
FROM Vendors as Vendors1 JOIN Vendors as Vendors2
	ON (Vendors1.VendorID = Vendors2.VendorID) AND
		(Vendors1.VendorName = Vendors2.VendorName) AND
		(Vendors1.VendorContactFName = Vendors2.VendorContactFName)
ORDER BY Name;
