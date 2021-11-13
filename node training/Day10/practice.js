var mongoose=require("mongoose")
mongoose.connect("mongodb://localhost:27017/demodb")
.then(()=>console.log("connected...")).catch((err)=>console.log(err));


const empschema=new mongoose.Schema({
    id:Number,
    name:String,
    address:String,
    skill:Array
})

const Emplist=new mongoose.model("EmpCollection",empschema);

const createdoc=async()=>{
try{
    const empdata=new Emplist({
        id:1,
        name:"Zala Kuldip",
        address:"Talod(S.K)",
        skill:["Flutter","Android"]
    });
    const result=await empdata.save();
    console.log(result);
}catch(err){console.log(err);}
}

createdoc();