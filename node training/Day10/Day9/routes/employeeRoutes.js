const bodyParser = require('body-parser');
const express = require('express');
const router = express.Router();
//const employees = require('../model/employees.json');
router.use(bodyParser.json());
require("dotenv").config()
let jwt = require('jsonwebtoken');
let verifyToken = require('./validatetoken');


var mongoose=require("mongoose")
mongoose.connect("mongodb://localhost:27017/demodb")
.then(()=>console.log("connected...")).catch((err)=>console.log(err));


// const empschema=new mongoose.Schema({
//     //id:Number,
//     //name:String,
//     //address:String,
// })

const Emplist=new mongoose.model("EmpCollection",mongoose.Schema());


router.get('/',verifyToken, async(req, res, next) => {
    //res.send(employees);
    const getdata=async()=>{
         let result= await Emplist.find();
         //.select("id");
         console.log(result);
         return result;
        //console.log(result);
        //res.send(JSON.parse(result));
         //res.send(result);
    }
    try{
        const result=await getdata();
        console.log(result);
        res.send(result);
       // getdata();
        next()
    }catch(err){
        console.log(err);
    }
    
})



router.get('/:id',verifyToken, (req, res, next) => {
    const employee = employees.find(eid => eid.id = parseInt(req.params.id));
    if (!employee) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    res.send(employee);
    res.end();
})

router.get(
    '/:id/child/assignments',verifyToken, (req, res, next) => {
        const employee = employees.find(e => e.id === parseInt(req.params.id));
        if (!employee) res.status(404).send('<h3>404 Error Occur</h3>');
        res.send(employee.assignments);
        res.end();
    }
)
router.get('/:id/child/assignments/:assignmentID',verifyToken, (req, res, next) => {
    const employee = employees.find(e => e.id === parseInt(req.params.id));
    if (!employee) res.status(404).send('<h3>404 Error Occur</h3>');
    const assignment = employee.assignments.find(a => a.AssignmentId === parseInt(req.params.assignmentID));
    if (!assignment) res.status(404).send('<h3>404 Error Occur</h3>');
    res.send(assignment);
    res.end();
}
);
router.post('/',verifyToken, (req, res, next) => {
    const employee = {
        "id": employees.length + 1,
        "AddressLine1": req.body.AddressLine1,
        "AddressLine2": req.body.AddressLine2,
        "AddressLine3": req.body.AddressLine3,
        "CitizenshipId": parseInt(req.body.CitizenshipId),
        "CitizenshipLegislationCode": req.body.CitizenshipLegislationCode,
        "CitizenshipStatus": req.body.CitizenshipStatus,
        "CitizenshipToDate": req.body.CitizenshipToDate,
        "City": req.body.City,
        "CorrespondenceLanguage": req.body.CorrespondenceLanguage,
        "Country": req.body.Country,
        "CreationDate": req.body.CreationDate,
        "DateOfBirth": req.body.DateOfBirth,
        "directReports": req.body.directReports,
        "DisplayName": req.body.DisplayName,
        "DriversLicenseId": req.body.DriversLicenseId,
        "DriverLicenceseExpirationDate": req.body.DriverLicenceseExpirationDate,
        "DriverLicenceseIssuingCountry": req.body.DriverLicenceseIssuingCountry,
        "EffectiveStartDate": req.body.EffectiveStartDate,
        "Ethnicity": req.body.Ethnicity,
        "FirstName": req.body.FirstName,
        "Gender": req.body.Gender,
        "HireDate": req.body.HireDate,
        "HomeFaxAreaCode": req.body.HomeFaxAreaCode,
        "HomeFaxCountryCode": req.body.HomeFaxCountryCode,
        "HomeFaxExtension": req.body.HomeFaxExtension,
        "HomeFaxLegilationCode": req.body.HomeFaxLegilationCode,
        "HomeFaxNumber": req.body.HomeFaxNumber,
        "HomePhoneAreaCode": req.body.HomePhoneAreaCode,
        "HomePhoneCountryCode": req.body.HomePhoneCountryCode,
        "HomePhoneExtension": req.body.HomePhoneExtension,
        "HomePhoneLegislationCode": req.body.HomePhoneLegislationCode,
        "HomePhoneNumber": req.body.HomePhoneNumber,
        "Honors": req.body.Honors,
        "LastName": req.body.LastName,
        "LastUpdateDate": req.body.LastUpdateDate,
        "LegalEntityId": parseInt(req.body.LegalEntityId),
        "LicenseNumber": req.body.LicenseNumber,
        "links": [parseInt(req.body.links)],
        "MaritalStatus": req.body.MaritalStatus,
        "MiddleName": req.body.MiddleName,
        "NameSuffix": req.body.NameSuffix,
        "NationalId": req.body.NationalId,
        "NationalIdCountry": req.body.NationalIdCountry
    }


});
router.post('/:id/child/assignments',verifyToken, (req, res, next) => {
    const employee = employees.find(e => e.id === parseInt(req.params.id));
    if (!employee) res.status(404).send('<h3>404 Error Occur</h3>');
    const assignment = {
        "AssignmentId": employee.assignments.length+1,
        "ActionCode": req.body.ActionCode,
        "ActionReasonCode": req.body.ActionReasonCode,
        "ActualTerminationDate": req.body.ActualTerminationDate,
        "AssignmentCategory": req.body.AssignmentCategory,
        "assignmentDFF": req.body.assignmentDFF,
        "assignmentExtraInformation": req.body.assignmentExtraInformation,
        "AssignmentName": req.body.AssignmentName,
        "AssignmentNumber": req.body.AssignmentNumber,
        "AssignmentProjectedEndDate": req.body.AssignmentProjectedEndDate,
        "AssignmentStatus": req.body.AssignmentStatus,
        "AssignmentStatusTypeId": parseInt(AssignmentStatusTypeId),
        "BusinessUnitId": parseInt(req.body.BusinessUnitId),
        "CreationDate": req.body.CreationDate,
        "DefaultExpenseAccount": req.body.DefaultExpenseAccount,
        "DepartmentId": req.body.DepartmentId,
        "EffectiveEndDate": req.body.EffectiveEndDate,
        "EffectiveStartDate": req.body.EffectiveStartDate,
        "empreps": req.body.empreps,
        "EndTime": req.body.EndTime,
        "Frequency": req.body.Frequency,
        "FullPartTime": req.body.FullPartTime,
        "GradeId": parseInt(req.body.GradeId),
        "GradeLadderId": parseInt(req.body.GradeLadderId),
        "JobId": parseInt(req.body.JobId),
        "LastUpdateDate": req.body.LastUpdateDate,
        "links": [req.body.links],
        "LocationId": parseInt(req.body.LocationId),
        "ManagerAssignmentId": parseInt(req.body.ManagerAssignmentId),
        "ManagerId": parseInt(req.body.ManagerId)
    }
    employee.assignments.push(assignment);
    res.end();
});
router.put('/:id',verifyToken, (req, res, next) => {
    const employee = employees.find(eid => eid.id = parseInt(req.body.id));
    if (!employee) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    // employee.AddressLine1=req.body.AddressLine1,
    // employee.AddressLine2=req.body.AddressLine2,
    // employee.AddressLine3=req.body.AddressLine3,
    // employee.assignments= req.body.assignments,
    // employee.CitizenshipId=parseInt(req.body.CitizenshipId),
    // employee.CitizenshipLegislationCode= req.body.CitizenshipLegislationCode,
    // employee.CitizenshipStatus= req.body.CitizenshipStatus,
    // employee.CitizenshipToDate= req.body.CitizenshipToDate,
    // employee.City=req.body.City,
    // employee.CorrespondenceLanguage=req.body.CorrespondenceLanguage,
    // employee.Country= req.body.Country,
    // employee.CreationDate=req.body.CreationDate,
    // employee.DateOfBirth=req.body.DateOfBirth,
    // employee.directReports= req.body.directReports,
    // employee.DisplayName=req.body.DisplayName,
    // employee.DriversLicenseId=req.body.DriversLicenseId,
    // employee.DriverLicenceseExpirationDate= req.body.DriverLicenceseExpirationDate,
    // employee.DriverLicenceseIssuingCountry= req.body.DriverLicenceseIssuingCountry,
    // employee.EffectiveStartDate=req.body.EffectiveStartDate,
    // employee.Ethnicity=req.body.Ethnicity,
    // employee.FirstName=req.body.FirstName,
    // employee.Gender=req.body.Gender,
    // employee.HireDate=req.body.HireDate,
    // employee.HomeFaxAreaCode=req.body.HomeFaxAreaCode,
    // employee.HomeFaxCountryCode=req.body.HomeFaxCountryCode,
    // employee.HomeFaxExtension=req.body.HomeFaxExtension,
    // employee.HomeFaxLegilationCode=req.body.HomeFaxLegilationCode,
    // employee.HomeFaxNumber=req.body.HomeFaxNumber,
    // employee.HomePhoneAreaCode=req.body.HomePhoneAreaCode,
    // employee.HomePhoneCountryCode=req.body.HomePhoneCountryCode,
    // employee.HomePhoneExtension=req.body.HomePhoneExtension,
    // employee.HomePhoneLegislationCode=req.body.HomePhoneLegislationCode,
    // employee.HomePhoneNumber=req.body.HomePhoneNumber,
    // employee.Honors=req.body.Honors,
    // employee.LastName=req.body.LastName,
    // employee.LastUpdateDate=req.body.LastUpdateDate,
    // employee.LegalEntityId=parseInt(req.body.LegalEntityId),
    // employee.LicenseNumber=req.body.LicenseNumber,
    // employee.links=[parseInt(req.body.links)],
    // employee.MaritalStatus=req.body.MaritalStatus,
    // employee.MiddleName=req.body.MiddleName,
    // employee.NameSuffix=req.body.NameSuffix,
    // employee.NationalId=req.body.NationalId,
    // employee.NationalIdCountry=req.body.NationalIdCountry
    for (x of employee) {
        employee.x = req.body.x;
    }
    res.end();
})
router.put('/:id/child/assignments/:assignmentID', verifyToken,(req, res, next) => {
    const employee = employees.find(eid => eid.id = parseInt(req.body.id));
    if (!employee) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    const assignment = employee.assignments.find(a => a.AssignmentId === parseInt(req.params.assignmentID));
    if (!assignment) res.status(404).send('<h3>404 Error Occur</h3>');
    for (x of assignment) {
        assignment.x = req.body.x;
    }
    res.end();
})
router.delete('/:id',verifyToken, (req, res, next) => {
    const employee = employees.find(eid => eid.id = parseInt(req.body.id));
    if (!employee) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    const index = employees.indexOf(employee);
    employees.splice(index, 1);
    res.end()
})
router.delete('/:id/child/assignments/:assignmentID',verifyToken,(req,res,next)=>{
    const employee = employees.find(eid => eid.id = parseInt(req.body.id));
    if (!employee) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    const assignment = employee.assignments.find(a => a.AssignmentId === parseInt(req.params.assignmentID));
    if (!assignment) res.status(404).send('<h3>404 Error Occur</h3>');
    const index = employee.assignments.indexOf(assignment);
    employee.assignments.splice(index,1);
})
module.exports = router;