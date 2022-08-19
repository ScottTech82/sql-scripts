SELECT i.InvoiceDate, Count(*) LineItemCount, SUM(InvoiceLineItemAmount) LineItemSum
FROM GLAccounts g JOIN InvoiceLineItems li
	ON g.AccountNo = li.AccountNo
	JOIN Invoices i
		On li.InvoiceID = i.InvoiceID
GROUP BY i.InvoiceDate
HAVING i.InvoiceDate Between '2019-10-01' and '2019-12-31'
ORDER BY LineItemCount desc;