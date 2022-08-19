SELECT VendorName as Vendor, InvoiceDate as Date, InvoiceNumber as Number, InvoiceSequence as #, InvoiceLineItemAmount as LineItem
FROM Vendors
	JOIN Invoices ON Vendors.VendorID = Invoices.VendorID
	JOIN InvoiceLineItems ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
Order By Vendor, Date, Number, #;
