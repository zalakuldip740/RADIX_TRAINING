const PatientModel = require("../models/patient.model");

class PatientDomain {
  //To get all patients
  async getAllPatients(req, res) {
    const patients = await PatientModel.find();
    res.send(patients);
  }
  //To get patient
  async getPatient(req, res) {
    let id = req.params.PatId;
    const patient = await PatientModel.findById(id);
    if (patient) {
      res.send(patient);
    } else {
      res.status(404).send("Patient Not Found");
    }
  }
  //To Insert patient
  async insertPatient(req, res) {
    //getting user input
    let data = req.body;

    const patient = new PatientModel(data);
    try {
      const result = await patient.save();
      res.send(result);
    } catch (e) {
      res.send(e.message);
    }
  }
  //To delete a patient
  async deletePatient(req, res) {
    let id = req.params.PatId;
    const patient = await PatientModel.findByIdAndDelete(id);
    if (patient) {
      res.send("Patient Record Deleted Successfully");
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To update a patient
  async updatePatient(req, res) {
    //getting user input
    let data = req.body;

    let id = req.body._id;
    const patients = await PatientModel.find();
    let isAvail = patients.find((e) => e.id == id);

    if (isAvail) {
      try {
        const result = await PatientModel.findByIdAndUpdate(
          id,
          {
            $set: data,
          },
          { new: true }
        );
        res.send(result);
      } catch (e) {
        res.send(e.message);
      }
    } else {
      res.status(404).send("Patient Not Foud");
    }
  }

  //To get medicine
  async getPatientMedicine(req, res) {
    let id = req.params.PatId;
    const patient = await PatientModel.findById(id)
      .populate("medicines.medicine", "name -_id")
      .select("medicines -_id");
    if (patient) {
      res.send(patient);
    } else {
      res.status(404).send("Patient Not Found");
    }
  }
}

module.exports = PatientDomain;
