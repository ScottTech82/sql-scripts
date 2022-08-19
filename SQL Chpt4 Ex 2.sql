SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
ORDER BY VendorName;