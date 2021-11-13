const mongoose = require("mongoose");
var mongoDB = "mongodb://localhost/demodb";
mongoose
  .connect(mongoDB, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log("Connected To MongoDB"));
var db = mongoose.connection;
db.on("error", console.error.bind(console, "MongoDB connection error:"));

const employeeSchema = new mongoose.Schema({
  id: {type:Number,required:true,unique:true},
  FirstName: { type: String, required: true,maxlength:15},
  LastName: { type: String, required: true,maxlength:15},
  Assignments: [
    {
      id: {type:Number,required:true,unique:true},
      AssignmentCategory: String,
      AssignmentName: {type:String,required:true,maxlength:10},
      AssignmentStatus: {type:String,enum:["pending","done"]},
    },
  ],
});

const EmployeeModel = mongoose.model("Empcollection", employeeSchema);

module.exports = EmployeeModel;
