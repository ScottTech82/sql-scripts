SELECT AccountDescription, GLAccounts.AccountNo
FROM GLAccounts LEFT JOIN InvoiceLineItems
	ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
ORDER BY AccountNo;