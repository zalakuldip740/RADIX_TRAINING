const express = require('express');
const app = express();
const employeesRouter = require('./employeeRoutes');
app.get('/',(req,res,next)=>{
    res.send('hello world');
    next();
});
app.use('/emp',employeesRouter);
app.listen(3001,()=>console.log('Server is Running>>>>>>>>'));