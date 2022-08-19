SELECT AccountDescription, Count(*) LineItemCount, SUM(InvoiceLineItemAmount) LineItemSum
FROM GLAccounts g JOIN InvoiceLineItems li
	ON g.AccountNo = li.AccountNo
GROUP BY AccountDescription
HAVING Count(*) > 1
ORDER BY LineItemCount desc;