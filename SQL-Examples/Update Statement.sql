/* Updating the Default Account No using = to subquery selecting the correct accountno from table of 'Software'
with DefaultID and must PUT WHERE the old info that is being changed.

Then ran the SELECT * in order to show the result did get changed.
*/

UPDATE VendorsCopy Set
    DefaultAccountNo = (SELECT AccountNo FROM GLAccounts WHERE AccountDescription = 'Software'),
    DefaultTermsID = 1
    Where DefaultAccountNo = 100;

SELECT * from VendorsCopy
    WHERE DefaultAccountNo IN (100, 167);