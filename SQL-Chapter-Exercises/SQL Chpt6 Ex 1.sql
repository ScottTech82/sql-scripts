/* Both of these work */

SELECT DISTINCT VendorName
FROM Vendors
WHERE VendorID IN (
    SELECT VendorID
    FROM Invoices
)
ORDER BY VendorName;

SELECT DISTINCT VendorName
FROM Vendors
Where EXISTS (
    SELECT *
    FROM Invoices
    WHERE Invoices.VendorID = Vendors.VendorID
)
ORDER BY VendorName;


SELECT DISTINCT VendorName
FROM Vendors JOIN Invoices
    On Vendors.VendorID = Invoices.VendorID
ORDER BY VendorName;
