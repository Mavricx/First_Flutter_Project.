import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
         displayLarge :TextStyle(fontSize: 21,fontFamily: 'fontStylish')
        ),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  var arrname=["Piku","Lora","Heera Bhalu","Ashok kumar","Susama Singh","Basanti Nayak","Golu","Molu","Tolu"];
  var relation=["Myself","Sister","Sister","Father","Mother","GrandMother","Stranger","Stranger","Stranger"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Priyanshu\'s First App'),
        ),
         body:ListView.separated(itemBuilder: (context,index){
           return ListTile(
             leading:CircleAvatar(
           backgroundImage: AssetImage("assets/images/heera.jpg"),
           radius: 28,),
             title: Text(arrname[index],style: Theme.of(context).textTheme.displayLarge),
             subtitle: Text(relation[index],style: TextStyle(fontFamily: 'fontStylish'),),
             trailing:InkWell(
                 onTap:(){
                   print("Hello!!") ;
                 },child: Icon(Icons.add)
             ),
           );
           },
           itemCount: arrname.length,
           separatorBuilder: (context,index){
             return Divider(
               height: 20,
               thickness: 3.4,
             );
           },
         )
    );

  }
}
