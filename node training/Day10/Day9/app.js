const express = require('express');
const app = express();
const employeesRouter = require('./routes/employeeRoutes');
const loginRouter = require('./routes/login');
const studentsRouter = require('./routes/student');
app.get('/',(req,res,next)=>{
    res.send('hello world');
    next();
});
app.use('/emp',employeesRouter);
app.use('/login',loginRouter);
app.use('/student',studentsRouter);
app.listen(3001,()=>console.log('Server is Running>>>>>>>>'));