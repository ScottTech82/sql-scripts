/* Can only group by 1 specific column, cant have other columns
This one is grouping the data by State and providing the total sum of invoices.
*/

SELECT VendorState, SUM(InvoiceTotal) as Total
	From Invoices i
	Join Vendors v
		On v.VendorID = i.VendorID
	--Where clause here
	GROUP BY VendorState
ORDER BY VendorState;
