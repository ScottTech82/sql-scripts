/*Written as a JOIN statement

SELECT VendorName, InvoiceLineItems.InvoiceID, InvoiceSequence, InvoiceLineItemAmount
FROM Vendors JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
	JOIN InvoiceLineItems
	ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
WHERE InvoiceSequence > 1;
*/

--Trying to write as subquery
SELECT VendorName, InvoiceID, InvoiceSequence, InvoiceLineItemAmount
From Vendors JOIN
	(SELECT 

	