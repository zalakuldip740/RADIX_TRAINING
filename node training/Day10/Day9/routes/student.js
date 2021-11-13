const bodyParser = require('body-parser');
const express = require('express');
const router = express.Router();
//const students = require('../model/students.json');
router.use(bodyParser.json());
let verifyToken = require('./validatetoken');


var mongoose=require("mongoose")
mongoose.connect("mongodb://localhost:27017/demodb")
.then(()=>console.log("connected...")).catch((err)=>console.log(err));


// const empschema=new mongoose.Schema({
//     //id:Number,
//     //name:String,
//     //address:String,
// })

const Studentlist=new mongoose.model("Studentcollection",mongoose.Schema());


router.get('/',verifyToken, async(req, res, next) => {
    //res.send(employees);
    const getdata=async()=>{
         let result= await Studentlist.find();
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



module.exports = router;