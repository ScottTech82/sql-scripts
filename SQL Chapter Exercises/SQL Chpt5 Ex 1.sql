SELECT VendorID, SUM(PaymentTotal) as PaymentSum
FROM Invoices
GROUP BY VendorID;