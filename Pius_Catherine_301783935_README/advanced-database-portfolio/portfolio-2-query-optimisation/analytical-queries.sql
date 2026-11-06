-- Portfolio 2: Query Processing & Optimisation Scripts

-- Query 1: Active Patients with Suppressed Viral Load (< 1000 copies/mL)
SELECT 
    p.PatientID, 
    f.FacilityName, 
    f.LGA, 
    p.Sex, 
    p.Current_Age, 
    v.CurrentViralLoad, 
    v.DateofCurrentViralLoad
FROM Patient p
JOIN Facility f ON p.FacilityID = f.FacilityID
JOIN PharmacyLog pl ON p.PatientID = pl.PatientID
JOIN ViralLoadTest v ON p.PatientID = v.PatientID
WHERE pl.CurrentARTStatus_Pharmacy = 'Active' 
  AND v.CurrentViralLoad < 1000;

-- Query 2: Patient Distribution & Status Breakdown by Facility and LGA
SELECT 
    f.LGA,
    f.FacilityName, 
    pl.CurrentARTStatus_Pharmacy, 
    COUNT(p.PatientID) AS TotalPatients,
    AVG(pl.LastWeight) AS AvgWeight
FROM Patient p
JOIN Facility f ON p.FacilityID = f.FacilityID
JOIN PharmacyLog pl ON p.PatientID = pl.PatientID
GROUP BY f.LGA, f.FacilityName, pl.CurrentARTStatus_Pharmacy
ORDER BY f.LGA, TotalPatients DESC;

-- Index Optimisations for Execution Plan Efficiency
CREATE NONCLUSTERED INDEX IX_Pharmacy_Status 
ON PharmacyLog(CurrentARTStatus_Pharmacy) 
INCLUDE (PatientID, LastWeight);

CREATE NONCLUSTERED INDEX IX_ViralLoad_Suppression 
ON ViralLoadTest(CurrentViralLoad) 
INCLUDE (PatientID, DateofCurrentViralLoad);
