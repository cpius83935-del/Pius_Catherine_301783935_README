// Portfolio 4: NoSQL (MongoDB) Queries

// 1. Find all active patients in RIYOM LGA with viral load < 1000
db.patients.find({
  "Demographics.LGA": "RIYOM",
  "CurrentARTStatus": "Active",
  "ViralLoadHistory.ViralLoad": { $lt: 1000 }
});

// 2. Aggregate total active vs lost-to-followup patients per facility
db.patients.aggregate([
  {
    $group: {
      _id: { facility: "$Demographics.FacilityName", status: "$CurrentARTStatus" },
      totalPatients: { $sum: 1 }
    }
  },
  { $sort: { "_id.facility": 1 } }
]);
