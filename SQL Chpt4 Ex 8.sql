SELECT 'CA' as Source, VendorName, VendorState
FROM Vendors

UNION

SELECT 'Outside CA' as Source, VendorName, VendorState
FROM Vendors
ORDER BY VendorName;

--VendorState should be CA otherwise Outside CA