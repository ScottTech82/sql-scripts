/* Chapter 4 Exercise 7

AccountNo exists in both tables. Used g.AccountNo to point to the correct one.

Used l.* to return all columns from InvoiceLineItems to make sure they have NULL result
then commented out. Can remove the dashes to put back in.

The WHERE statement provides each account number that has never been used.
*/

SELECT g.AccountNo, AccountDescription --, l.*
FROM GLAccounts g LEFT JOIN InvoiceLineItems l
	ON g.AccountNo = l.AccountNo
WHERE l.InvoiceID is NULL
ORDER BY g.AccountNo;
