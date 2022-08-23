SELECT InvoiceTotal,
    CAST(InvoiceTotal as decimal(18,2)) as Decimal2,
    CAST(InvoiceTotal as VARCHAR) as VarChar,
    CONVERT(decimal(18,2), InvoiceTotal) as ConvDecimal,
    CONVERT(varchar, InvoiceTotal, 1) as ConvVarchar
FROM Invoices
Order By InvoiceTotal desc;

SELECT InvoiceTotal
FROM Invoices
Order by InvoiceTotal desc;