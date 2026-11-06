# MIT 8103 Advanced Database Systems - Continuous Assessment Portfolio

**Student Name:** Catherine Pius
**Student ID:** 301783935 
**Course:** MIT 8103 Advanced Database Systems  
**Academic Session:** 2026/2027 First Semester  
**Case Study:** Plateau State Integrated ART (Antiretroviral Therapy) Clinic 

---

## 📌 Project Overview
This repository contains the practical portfolio deliverables for **MIT 8103 Advanced Database Systems**. The project models, optimizes, and manages an integrated antiretroviral therapy (ART) healthcare database tracking patient enrollments, clinical visits, pharmacy drug refills, longitudinal viral load suppression, and patient retention across multiple Local Government Areas (LGAs) and facilities (such as *GH R, GH K, A CHC, B CH, and SDA* in *RIYOM, KANKE, and BASSA*).

---

## 📁 Repository Structure

```text
Pius-Catherine-301783935-portfolio/
├── portfolio-1-database-design/
│   └── schema-ddl.sql
├── portfolio-2-query-optimisation/
│   ├── analytical-queries.sql
│   └── execution-plan-analysis.md
├── portfolio-3-transactions-concurrency/
│   └── transaction-concurrency-tests.sql
├── portfolio-4-nosql/
│   ├── patient-document-model.json
│   └── nosql-queries.js
├── portfolio-5-distributed-cloud/
│   └── distributed-sharding-config.md
└── README.md
```

---

## 🛠 Portfolio Summary

### Portfolio 1: Database Design and Modelling
- **Objective:** Normalize flat patient level data into 3rd Normal Form (3NF).
- **File:** `portfolio-1-database-design/schema-ddl.sql`
- **Key Entities:** `Facility`, `Patient`, `PharmacyLog`, `ViralLoadTest`.

### Portfolio 2: Query Processing and Optimisation
- **Objective:** Analytical queries for clinical cohort monitoring and index optimisation.
- **Files:** 
  - `portfolio-2-query-optimisation/analytical-queries.sql`
  - `portfolio-2-query-optimisation/execution-plan-analysis.md`

### Portfolio 3: Transactions and Concurrency
- **Objective:** Ensure ACID compliance during concurrent updates to patient status and pharmacy pickups.
- **File:** `portfolio-3-transactions-concurrency/transaction-concurrency-tests.sql`

### Portfolio 4: NoSQL and Advanced Data Models
- **Objective:** Flexible JSON document storage in MongoDB for fast longitudinal patient lookup.
- **Files:**
  - `portfolio-4-nosql/patient-document-model.json`
  - `portfolio-4-nosql/nosql-queries.js`

### Portfolio 5: Distributed and Cloud Database Strategy
- **Objective:** Horizontal sharding across LGAs and Primary-Secondary multi-AZ replication.
- **File:** `portfolio-5-distributed-cloud/distributed-sharding-config.md`
