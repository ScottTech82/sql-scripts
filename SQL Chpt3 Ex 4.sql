SELECT InvoiceTotal, InvoiceTotal * .10 as '10%', InvoiceTotal * 1.10 as 'Plus 10%'
FROM Invoices
Order By InvoiceTotal desc;