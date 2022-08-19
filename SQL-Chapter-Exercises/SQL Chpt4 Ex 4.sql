SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
FROM Vendors, Invoices
	WHERE Vendors.VendorID = Invoices.VendorID
ORDER BY VendorName;