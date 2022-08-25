Create or Alter Procedure InvoicesByDateRange
	@MinDate varchar(30) = NULL,
	@MaxDate varchar(30) = NULL  --GetDate function does not work here.
AS
	DECLARE @MinInvoiceDate varchar(20) = '01/01/1900';

	IF @MinDate is Null
		SET @MinDate = @MinInvoiceDate;
	IF @MaxDate is NULL
		SET @MaxDate = GetDate(); --Enter GetDate function here instead for todays date as MAX.
	SELECT *
	FROM Invoices
	WHERE InvoiceDate between @MinDate and @MaxDate
	ORDER BY InvoiceDate;
GO

Exec InvoicesByDateRange @MaxDate='1/31/2020', @MinDate='1/1/2020';