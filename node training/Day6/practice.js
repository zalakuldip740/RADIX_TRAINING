//1.Create a Restful API, which will return Customer list in JSON format.

//http://localhost:3000/customers

//2. Create a Restful API which will search a particular record from the customer list.

//http://localhost:3000/customers/1

//3. Create a Restful API which will insert a new customer object in the customer list.

//http://localhost:3000/customer

//3. Create a Restful API which update a name of existing customer whose customer ID is 1

//http://locahost:3000/customer

//4. Create a Restful API which will delete a record from the customer list.

//http://localhost:3000/customer

const express = require('express');
//const Joi = require('joi'); //used for validation
const app = express();
app.use(express.json());
 
const customerlist = [
{name: 'a', id: 1},
{name: 'b', id: 2},
{name: 'c', id: 3}
]
 
 
app.get('/customers', (req,res)=> {
res.send(customerlist);                     //que1
});

app.get('/customers/:id', (req, res) => {          // que2
    const list = customerlist.find(c => c.id === parseInt(req.params.id));
     
    if (!list) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Ooops... Cant find what you are looking for!</h2>');
    res.send(list);
    });


    app.post('/customers', (req, res)=> {
        
        const addlist = {                       // que3
        id: customerlist.length +1,
        name: req.body.name
        };
        customerlist.push(addlist);
        res.send(addlist);
        });




        app.put('/customers/:id', (req, res) => {
                                   
            const listupdate = customerlist.find(c=> c.id === parseInt(req.params.id));
            if (!listupdate) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Not Found!! </h2>');
 
                                              // que4
            listupdate.name = req.body.name;
            res.send(listupdate);  
            });
            
        
            app.delete('/customers/:id', (req, res) => {
 
                const deleteitem = customerlist.find( c=> c.id === parseInt(req.params.id));
                if(!deleteitem) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;"> Not Found!! </h2>');
                 
                const index = customerlist.indexOf(deleteitem);
                customerlist.splice(index,1);
                 
                res.send(deleteitem);
                });
                

app.listen(3000);

 
