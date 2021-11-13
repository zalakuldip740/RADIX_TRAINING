import 'package:ciright_test/api/animal_api.dart';
import 'package:ciright_test/model/animal_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key); 

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
 
 
  AnimalApi? animalApi;

  @override
  void initState() {
    // TODO: implement initState 
    animalApi!.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  
        child:  Flexible(
                child: FutureBuilder<List<Animal>>(
                    future: animalApi!.getData(),  
                    builder: (context, Snapshot) {
                      if(Snapshot.hasData){
                        <List<Animal>> info = Snapshot.data!;  
                           return GridView.builder(
                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5), 
                             itemBuilder: (context,index){
                               return Card();  
                             });
                           
                      } else if(Snapshot.hasError){
                           return Text('Error');
                      } else{
                        return Center(child: CircularProgressIndicator(),);
                      } 
                    }
                    ),
        ),
            
            
      ),
    );
  }
}
