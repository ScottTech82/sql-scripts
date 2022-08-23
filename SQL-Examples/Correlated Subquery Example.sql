--Correlated Subquery Example

SELECT VendorID, InvoiceNumber, InvoiceTotal 
FROM Invoices as Inv_Main 
WHERE InvoiceTotal > (
    SELECT AVG(InvoiceTotal)
    FROM Invoices as Inv_Sub
    WHERE Inv_Sub.VendorID = Inv_Main.VendorID
)
ORDER BY VendorID, InvoiceTotal;