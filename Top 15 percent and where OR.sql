SELECT TOP 15 Percent InvoiceDate, InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE (InvoiceTotal <= 100) OR (InvoiceTotal > 10000)
ORDER By InvoiceTotal desc;

--SELECT GETDATE();
