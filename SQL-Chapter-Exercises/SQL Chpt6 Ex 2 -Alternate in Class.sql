SELECT InvoiceNumber, InvoiceTotal
FROM Invoices
WHERE PaymentTotal > (
    SELECT AVG(PaymentTotal)
    FROM Invoices
    WHERE PaymentTotal > 0
)
ORDER BY InvoiceTotal;


