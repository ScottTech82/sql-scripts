SELECT *,
	InvoiceTotal - (PaymentTotal + CreditTotal) as BalanceDue
FROM Invoices
WHERE (PaymentDate IS NULL) AND (InvoiceTotal - (PaymentTotal + CreditTotal) = 0)
	OR (PaymentDate IS Not NULL) AND (InvoiceTotal - (PaymentTotal + CreditTotal) > 0);