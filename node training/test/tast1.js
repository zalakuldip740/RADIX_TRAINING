const express = require('express');
const app = express();
app.use(express.json());
 
const customerlist = [
{name: 'a', id: 1},
{name: 'b', id: 2},
{name: 'c', id: 3}
]
 


app.get('/customers', (req,res,next)=> {
    if(customerlist.length !=0){
        res.send(customerlist);
    }else{
        next()
    }
     

                    
});

app.get('/customers/:id', (req, res,next) => {         
    const list = customerlist.find(c => c.id === parseInt(req.params.id));
     
    if (!list){
    next()
    } //res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Ooops... Cant find what you are looking for!</h2>');
    res.send(list);
    });


    app.post('/customers', (req, res,next)=> {
        
        const addlist = {                      
        id: customerlist.length +1,
        name: req.body.name
        };
        customerlist.push(addlist);
        res.send(addlist);
        });




        app.put('/customers/:id', (req, res,next) => {
                                   
            const listupdate = customerlist.find(c=> c.id === parseInt(req.params.id));
            if (!listupdate) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;">Not Found!! </h2>');
 
                                        
            listupdate.name = req.body.name;
            res.send(listupdate);  
            });
            
        
            app.delete('/customers/:id', (req, res,next) => {
 
                const deleteitem = customerlist.find( c=> c.id === parseInt(req.params.id));
                if(!deleteitem) res.status(404).send('<h2 style="font-family: Malgun Gothic; color: darkred;"> Not Found!! </h2>');
                 
                const index = customerlist.indexOf(deleteitem);
                customerlist.splice(index,1);
                 
                res.send(deleteitem);
                });


                app.use(function(err,req,res,next){
                    
  if (error.type == 'redirect')
  res.redirect('/error')

else if (error.type == 'time-out') 
  res.status(408).send(error)
else
  res.status(500).send(error)
});
                

app.listen(3000);

 
