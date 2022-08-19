select InvoiceID,
	InvoiceID / 7 as Quotient, 
	InvoiceID % 7 as Remainder
FROM Invoices
Order by InvoiceID;
