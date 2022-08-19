/* Having being added to show only the groups over 20,000.

Having works like a WHERE statement, but analyzes the group by data.  

*/

SELECT VendorState, SUM(InvoiceTotal) as Total
	From Invoices i
	Join Vendors v
		On v.VendorID = i.VendorID
	GROUP BY VendorState
	HAVING SUM(InvoiceTotal) > 20000
ORDER BY VendorState;
