SELECT 
	CONCAT(VendorContactFName, ' ', VendorContactLName) AS 'Full Name',
	CONCAT(VendorContactLName, ', ', VendorContactFName) AS 'Last First'
From Vendors;
