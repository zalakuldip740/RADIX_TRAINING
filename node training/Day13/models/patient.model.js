const mongoose = require("mongoose");

const patientSchema = new mongoose.Schema({
  _id: Number,
  name: { type: String, required: true },
  department: {
    type: Number,
    ref: "department",
    required: true,
  },
  medicines: [
    {
      medicine: {
        type: Number,
        ref: "medicine",
      },
      doses: [{ type: String, enum: ["morning", "afternoon", "night"] }],
    },
  ],
});

const PatientModel = mongoose.model("patient", patientSchema);

module.exports = PatientModel;
