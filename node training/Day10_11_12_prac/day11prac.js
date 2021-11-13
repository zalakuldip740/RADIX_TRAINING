var mongoose=require("mongoose")
mongoose.connect("mongodb://localhost:27017/demodb")
.then(()=>console.log("connected...")).catch((err)=>console.log(err));


const praschema=new mongoose.Schema({
    id:Number,
    name:String,
    dept:String,
    salary:Number
})

const Pralist=new mongoose.model("practice",praschema);

const createdoc=async()=>{
try{
    const datas=[{
        id:1,
        name:"Zala Kuldip",
        dept:"mobile",
        salary:25000
    },
    {
        id:2,
        name:"rutvik",
        dept:"dotnet",
        salary:23000
    },
    {
        id:3,
        name:"jay",
        dept:"dotnet",
        salary:25000
    },
    {
        id:4,
        name:"sandy",
        dept:"react",
        salary:21000
    }];
    //const result=await Pralist.insertMany(datas); // add multiple datas
   // const result=await Pralist.deleteMany({id:{$in:[1,2,3,4]}}); //delete data,use of in
   //const result=await Pralist.find({"id":{$eq:1}}) // eqal
   //const result=await Pralist.find({"salary":{$gte:23000}})   //greater than & greater than equal
  // const result=await Pralist.find({"dept":{$in:["dotnet","mobile"]}})  // in & nin

 // logical operator
 //const result=await Pralist.find({$and:[{"salary":{$gt:23000}},{"dept":{$in:["dotnet","mobile"]}}]})  //and
 //const result=await Pralist.find({$nor:[{"salary":{$gt:23000}},{"dept":{$in:["dotnet","mobile"]}}]})
  let page=1;
  let limit=2;
 const result=await Pralist.find({"name":{$not:{$regex:/kul/i}}})         // regex
 //.count()
 //.sort({name:-1})
 .skip((page-1)*limit)
 .limit(limit)
    console.log(result);
}catch(err){console.log(err);}
}


createdoc();