/* Multiple aggregate functions
*/
SELECT InvoiceDate, Count(*) as InvoiceQty, Sum(InvoiceTotal) as InvoiceSum
	FROM Invoices
	Group By InvoiceDate
	Having InvoiceDate Between '2020-01-01' and '2020-01-31'
		and SUM(InvoiceTotal) > 100
		and Count(*) > 1
	ORDER BY InvoiceDate desc;