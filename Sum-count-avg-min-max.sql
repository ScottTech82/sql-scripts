SELECT SUM(InvoiceTotal) as Total,
		Count(*) as Count,
		AVG(InvoiceTotal) as Average,
		MIN(InvoiceTotal) as Min,
		MAX(InvoiceTotal) as Max
FROM Invoices;
