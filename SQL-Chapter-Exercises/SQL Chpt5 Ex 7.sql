SELECT VendorName, AccountDescription, Count(*) LineItemCount, SUM(InvoiceLineItemAmount) LineItemSum
FROM Vendors v 
	JOIN Invoices i
		On v.VendorID = i.VendorID	
	JOIN InvoiceLineItems li
		ON i.InvoiceID = li.InvoiceID
	JOIN GLAccounts g
		ON li.AccountNo = g.AccountNo

GROUP By VendorName, AccountDescription
ORDER BY VendorName, AccountDescription;