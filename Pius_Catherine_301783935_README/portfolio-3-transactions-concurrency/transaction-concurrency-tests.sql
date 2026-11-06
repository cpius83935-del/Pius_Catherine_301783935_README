-- Portfolio 3: Transactions and Concurrency Scripts
-- Scenario: Atomic Patient Status Update & Pharmacy Drug Pickup Logging

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

BEGIN TRANSACTION;

BEGIN TRY
    -- 1. Update patient drug pickup date and current clinical status
    UPDATE PharmacyLog
    SET Pharmacy_LastPickupdate = '2026-03-01',
        CurrentARTStatus_Pharmacy = 'Active',
        LastWeight = 62.5
    WHERE PatientID = 101;

    -- 2. Log lab result update if needed
    UPDATE ViralLoadTest
    SET DateofCurrentViralLoad = '2026-03-01'
    WHERE PatientID = 101;

    -- Commit transaction if both operations succeed
    COMMIT TRANSACTION;
    PRINT 'Transaction Completed Successfully. Patient status updated.';
END TRY
BEGIN CATCH
    -- Rollback changes in case of failure
    ROLLBACK TRANSACTION;
    PRINT 'Error encountered during transaction execution. Changes rolled back.';
    THROW;
END CATCH;
