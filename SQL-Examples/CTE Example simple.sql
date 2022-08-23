/* CTE (common table expression) used to create a virtual table with the data specified, then used to join.

*/

WITH CAVendors as (
    SELECT *
        From Vendors
        WHERE VendorState IN ('CA', 'OH')
)
SELECT *
    From Invoices
    JOIN CAVendors
        ON Invoices.VendorID = CAVendors.VendorID;