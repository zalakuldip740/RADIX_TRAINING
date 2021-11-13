const mongoose = require("mongoose");

const assistantSchema = new mongoose.Schema({
  _id: Number,
  name: { type: String, required: true },
  patients: [
    {
      type: Number,
      ref: "patient",
    },
  ],
});

const AssistantModel = mongoose.model("assistant", assistantSchema);

module.exports = AssistantModel;
