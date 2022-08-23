SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal > 
	(SELECT AVG(PaymentTotal)
	FROM Invoices);

