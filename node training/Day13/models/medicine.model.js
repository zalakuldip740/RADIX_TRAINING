const mongoose = require("mongoose");

const medicineSchema = new mongoose.Schema({
  _id: Number,
  name: { type: String, required: true },
});

const MedicineModel = mongoose.model("medicine", medicineSchema);

module.exports = MedicineModel;
