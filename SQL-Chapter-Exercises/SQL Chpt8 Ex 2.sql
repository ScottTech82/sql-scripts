SELECT InvoiceDate,
    CAST(InvoiceDate as varchar) as VarChar,
    CONVERT(varchar, InvoiceDate, 1) as ConvStyle1,
    CONVERT(varchar, InvoiceDate, 10) as ConvStyle10
FROM Invoices;