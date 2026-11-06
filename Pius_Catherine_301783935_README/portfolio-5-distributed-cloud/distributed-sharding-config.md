# Portfolio 5: Distributed and Cloud Database Configuration Strategy

## 1. Sharding Architecture
- **Shard Key:** `{ "Demographics.LGA": 1, "PatientID": 1 }`
- **Rationale:** Distributes write and read workloads across regional LGAs (*RIYOM*, *KANKE*, *BASSA*), ensuring localized data access for health centers and low read latency.

## 2. Replication & High Availability
- **Deployment:** MongoDB Atlas Multi-AZ Replica Set (1 Primary, 2 Secondary Replicas).
- **Read Preference:** `secondaryPreferred` for regional analytical queries and reporting to keep the Primary node unburdened for real-time patient registration and pharmacy updates.

## 3. CAP Theorem Trade-off (AP System)
- **Choice:** Prioritizes **Availability (A)** and **Partition Tolerance (P)**.
- **Clinical Justification:** Remote health facilities with poor network connectivity must remain operational to record drug pickups and patient visits offline. Data synchronizes back to the central server asynchronously via eventual consistency.
