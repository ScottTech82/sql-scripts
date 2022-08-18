Select InvoiceNumber as Number, InvoiceTotal as Total, PaymentTotal + CreditTotal as Credits, 
	InvoiceTotal - (PaymentTotal + CreditTotal) as Balance
FROM Invoices
WHERE (InvoiceTotal >= 500) AND (InvoiceTotal <= 10000);