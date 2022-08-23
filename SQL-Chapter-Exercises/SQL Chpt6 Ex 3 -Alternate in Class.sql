SELECT InvoiceNumber, InvoiceTotal, PaymentTotal
FROM Invoices
WHERE PaymentTotal > ALL (
    SELECT TOP 50 Percent PaymentTotal
    FROM Invoices
    Order By PaymentTotal
)
ORDER BY PaymentTotal;