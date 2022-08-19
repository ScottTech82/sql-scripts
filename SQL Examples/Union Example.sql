SELECT 'A' Category, *
	FROM Invoices
	WHERE InvoiceTotal >= 10000
UNION
SELECT 'B' Category, *
	FROM Invoices
	WHERE InvoiceTotal < 10000 AND InvoiceTotal >= 100
UNION
SELECT 'C' Category, *
	FROM Invoices
	WHERE InvoiceTotal < 100;