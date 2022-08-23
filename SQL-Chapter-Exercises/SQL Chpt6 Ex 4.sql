SELECT AccountNo, AccountDescription
FROM GLAccounts
WHERE NOT EXISTS
	(SELECT *
	FROM InvoiceLineItems
	WHERE GLAccounts.AccountNo = InvoiceLineItems.AccountNo)
ORDER BY AccountNo;

