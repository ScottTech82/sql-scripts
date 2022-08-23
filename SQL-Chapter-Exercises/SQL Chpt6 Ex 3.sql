SELECT InvoiceNumber, InvoiceTotal, PaymentTotal
From Invoices
WHERE PaymentTotal <> ALL
	(SELECT TOP 50 Percent PaymentTotal
	FROM Invoices
	ORDER BY PaymentTotal)
ORDER BY PaymentTotal desc;


/* Solved this one by using the Not Equal to ALL and ordering the PaymentTotal ascending
Any other way did not provide the results of 57 rows and smallest $111 payment total
*/
