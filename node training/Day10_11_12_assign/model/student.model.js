const mongoose = require("mongoose");
var mongoDB = "mongodb://localhost/demodb";
mongoose.connect(mongoDB, { useNewUrlParser: true, useUnifiedTopology: true });
//.then(() => console.log("Connected To MongoDB"));
var db = mongoose.connection;
db.on("error", console.error.bind(console, "MongoDB connection error:"));

const studentSchema = new mongoose.Schema({
  ID:{ type:Number,unique:true,required:true},
  Name: { type: String, required: true },
  Address: { type: String, required: true },
  Fees: {
      Amount: Number,
      PaymentDate: Date,
      Status: Boolean,
    },
  Result:
    {
      Hindi: Number,
      Eng: Number,
      Math: Number,
      Total: Number,
      Grade: String,
    },
});

const StudentModel = mongoose.model("Studentcollection", studentSchema);

module.exports = StudentModel;
