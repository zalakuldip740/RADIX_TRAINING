const DoctorModel = require("../models/doctor.model");

class DoctorDomain {
  //To get all doctors
  async getAllDctors(req, res) {
    const doctors = await DoctorModel.find();
    res.send(doctors);
  }
  //To get doctor
  async getDoctor(req, res) {
    let id = req.params.DoctId;
    const doctor = await DoctorModel.findById(id).populate("patients");
    if (doctor) {
      res.send(doctor);
    } else {
      res.status(404).send("Doctor Not Found");
    }
  }
  //to get patient
  async getPatient(req, res) {
    let id = req.params.DoctId;
    let pId = req.params.PatId;
    const doctor = await DoctorModel.findById(id).populate("patients");
    if (doctor) {
      const result = doctor.patients.find((p) => p.id == pId);
      if (result) {
        res.send(result);
      } else {
        res.status(404).send("Patient Not Found");
      }
    } else {
      res.status(404).send("Doctor Not Found");
    }
  }
  //To Insert Doctor
  async insertDoctor(req, res) {
    //getting user input
    let data = req.body;

    const doctor = new DoctorModel(data);
    try {
      const result = await doctor.save();
      res.send(result);
    } catch (e) {
      res.send(e.message);
    }
  }
  //To delete a doctor
  async deleteDoctor(req, res) {
    let id = req.params.DoctId;
    const doctor = await DoctorModel.findByIdAndDelete(id);
    if (doctor) {
      res.send("Doctor Record Deleted Successfully");
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To update an employee
  async updateDoctor(req, res) {
    //getting user input
    let data = req.body;

    let id = req.body._id;
    const doctors = await DoctorModel.find();
    let isAvail = doctors.find((e) => e.id == id);

    if (isAvail) {
      try {
        const result = await DoctorModel.findByIdAndUpdate(
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
      res.status(404).send("Doctor Not Found");
    }
  }
  async getSummary(req, res) {
    let id = req.params.DoctId;
    const doctors = await DoctorModel.findById(id)
      .populate({
        path: "patients",
        populate: { path: "department" },
      })
      .populate({
        path: "patients",
        populate: { path: "medicines.medicine" },
      });
    if (doctors) {
      res.send(doctors);
    } else {
      res.status(404).send("Doctor Not Found");
    }
  }
}

module.exports = DoctorDomain;
