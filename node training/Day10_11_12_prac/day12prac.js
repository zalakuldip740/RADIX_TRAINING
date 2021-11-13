var mongoose=require("mongoose")
mongoose.connect("mongodb://localhost:27017/demodb")
.then(()=>console.log("connected...")).catch((err)=>console.log(err));


const empschema=new mongoose.Schema({
    id:{type:Number,required:true,unique:true},
    name:{type:String,required:true,maxlength:15,uppercase:true,trim:true},
    address:{type:String,maxlength:10},
    profile:{type:String,enum:["flutter","android"]}
})

const Emplist=new mongoose.model("EmpCollection",empschema);

const createdoc=async()=>{
try{
    const empdata=new Emplist({
        id:17,
        name:"           Zala Kuldip      ",
        address:"Talod(S.K)",
        profile:"flutter"
    });
    const result=await empdata.save();
    console.log(result);
}catch(err){console.log(err);}
}

createdoc();