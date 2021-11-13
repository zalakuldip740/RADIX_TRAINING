var express = require("express");
const MedicineDomain = require("../domains/medicine.domain");
var router = express.Router();

class MedicineController {
  //To get all medicines
  static async get(req, res) {
    const medicineDomain = new MedicineDomain();
    medicineDomain.getAllMedicine(req, res);
  }
  //to get medicine
  static async getMedicine(req, res) {
    const medicineDomain = new MedicineDomain();
    medicineDomain.getMedicine(req, res);
  }
  //To insert medicine
  static async insertMedicine(req, res) {
    const medicineDomain = new MedicineDomain();
    medicineDomain.insertMedicine(req, res);
  }
  //To delete medicine
  static async deleteMedicine(req, res) {
    const medicineDomain = new MedicineDomain();
    medicineDomain.deleteMedicine(req, res);
  }
}

//To get all medicines
router.get("/", MedicineController.get);
//To get a single medicine by id
router.get("/:MedId", MedicineController.getMedicine);
//To delete a medicine
router.delete("/:MedId", MedicineController.deleteMedicine);
//To insert medicine
router.post("/", MedicineController.insertMedicine);

module.exports = router;
