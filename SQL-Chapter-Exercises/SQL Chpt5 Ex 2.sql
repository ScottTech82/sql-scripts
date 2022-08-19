SELECT TOP 10 VendorName, SUM(PaymentTotal) as PaymentSum
FROM Vendors JOIN Invoices
	On Vendors.VendorID = Invoices.VendorID
Group By VendorName
ORDER BY PaymentSum desc;