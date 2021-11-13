const mongoose = require("mongoose");

const doctorSchema = new mongoose.Schema({
  _id: Number,
  name: { type: String, required: true },
  patients: [
    {
      type: Number,
      ref: "patient",
    },
  ],
});

const DoctorModel = mongoose.model("doctor", doctorSchema);

module.exports = DoctorModel;
