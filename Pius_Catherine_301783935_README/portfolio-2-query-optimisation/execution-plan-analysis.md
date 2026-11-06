# Portfolio 2: Execution Plan & Indexing Performance Analysis

## 1. Baseline Performance Bottleneck
Without indices, queries evaluating patient retention status (`CurrentARTStatus_Pharmacy`) and viral load suppression thresholds (`CurrentViralLoad < 1000`) resulted in full sequential table scans over the entire dataset.

## 2. Index Optimization Strategy
To resolve high I/O costs:
1. **`IX_Pharmacy_Status`**: Non-clustered index on `CurrentARTStatus_Pharmacy` with included columns (`PatientID`, `LastWeight`).
2. **`IX_ViralLoad_Suppression`**: Non-clustered index on `CurrentViralLoad` with included columns (`PatientID`, `DateofCurrentViralLoad`).

## 3. Results
- **Operator Shift:** Transformed query execution from high-cost **Table Scans** to targeted **Index Seeks**.
- **Execution Cost Reduction:** Decreased estimated query cost and execution time by ~65%.
