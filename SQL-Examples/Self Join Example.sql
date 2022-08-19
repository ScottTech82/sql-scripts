SELECT DISTINCT Vendors1.VendorName, Vendors1.VendorCity, Vendors1.VendorState
FROM Vendors as Vendors1 JOIN Vendors as Vendors2
ON (Vendors1.VendorCity = Vendors2.VendorCity) AND
	(Vendors1.VendorState = Vendors2.VendorState) AND
	(Vendors1.VendorID <> Vendors2.VendorID)
ORDER By Vendors1.VendorState, Vendors1.VendorCity;
