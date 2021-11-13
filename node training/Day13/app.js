const express = require("express");
const doctors = require("./controllers/doctor.controller");
const patients = require("./controllers/patient.controller");
const medicines = require("./controllers/medicine.controller");
const departments = require("./controllers/department.controller");
const assistants = require("./controllers/assistant.controller");

const mongoose = require("mongoose");

var mongoDB = "mongodb://localhost/hospital";
mongoose
  .connect(mongoDB, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log("Connected To MongoDB"));
var db = mongoose.connection;
db.on("error", console.error.bind(console, "MongoDB connection error:"));

const app = express();
const port = 3000;

app.use(express.json());

app.use("/doctors", doctors);
app.use("/patients", patients);
app.use("/medicines", medicines);
app.use("/departments", departments);
app.use("/assistants", assistants);

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log(`app listening at http://localhost:${port}`);
});
