/* v.vendorid added to the Group by to confirm we do not get duplicate vendor names if they exist
*/

SELECT VendorName, Count(*) as InvoiceCount, SUM(InvoiceTotal) as InvoiceSum
FROM Vendors v JOIN Invoices i
	On V.VendorID = I.VendorID
Group by v.vendorid, VendorName
ORDER By Count(*) desc;
