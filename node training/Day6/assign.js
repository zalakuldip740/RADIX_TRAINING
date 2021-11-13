//Students=[{“ID”:1,”Name”:Reena”,”Address”:”Ahmedabad”,
//”Fees”:{“Amount:10000,”PaymentDate”:”12/12/2020”,”Status”:”true”},
//”Result”:{“Hindi”:80,”Eng”:70,”Math”:60,”Total”:210,”Grade”:”A”}},
//{“ID”:2,”Name”:”Rita”,”Address”:”Surat”, ”Fees”:{“Amount:12000,
//”PaymentDate”:”12/12/2020”,”Status”:”false”},
//”Result”:{“Hindi”:80,”Eng”:70,”Math”:60,”Total”:210,”Grade”:”A”}}]

//1. Create a RESTFUL API which will return a Studentlist.
//http://localhost:3000/students

//2. Create RESTFUL API which will return a Particular Student Record
//http://localhost:3000/students/1

//3. Create a RESTFUL API which return a particular student FEES Record.
// Fees field are http://localhost:3000/students/1/fees

//4. Create a RESTFUL API which will return a particular
// student Exam Result. Result Fields are http://localhost:/3000/students/1/result

//5. Create a RESTFUL API which will update a result of result of 
//student id 1. Update the marks for English Subject.


const express = require('express');
const app = express();
app.use(express.json());
const Students = [{
    "ID": 1, "Name": "Reena", "Address": "Ahmedabad", "Fees": { "Amount": 10000, "PaymentDate": "12/12/2020", "Status": "true" }, "Result": { "Hindi": 80, "Eng": 70, "Math": 60, "Total": 210, "Grade": "A" }

}, {
    "ID": 2, "Name": "Rita", "Address": "Surat", "Fees": {
        "Amount": 12000, "PaymentDate": "12 / 12 / 2020", "Status": "false"
    },

    "Result": { "Hindi": 80, "Eng": 70, "Math": 60, "Total": 210, "Grade": "A" }

}]

app.get('/',(req,res)=>{
    res.send("hello");
    res.end();
})
app.get('/students',
    (req, res) => {
        res.send(Students);
        res.end();
    })
app.get('/students/:id',
    (req, res) => {
        const student = Students.find(s => s.ID === parseInt(req.params.id));
        if(!student) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
        res.send(student);
        res.end();
    })
app.get('/students/:id/fees',
(req,res)=>{
    const student = Students.find(s => s.ID === parseInt(req.params.id));
    if(!student) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    res.send(student.Fees);
    res.end();
})
app.get('/students/:id/result',
(req,res)=>{
    const student = Students.find(s => s.ID === parseInt(req.params.id));
    if(!student) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    res.send(student.Result);
    res.end();
})
app.put('/students/:id/result/english',
(req,res)=>{
    const student = Students.find(s => s.ID === parseInt(req.params.id));
    if(!student) res.status(404).send("<h2>404 ERROR OCCUR</h2>");
    student.Result.Eng = parseInt(req.body.Eng);
    res.end();
});
app.listen(3016, () => console.log('Server is Running'))