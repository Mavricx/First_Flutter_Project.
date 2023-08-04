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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
var arrname=["piku","lora","Herra","Ashok kumar","Susama singh","Basanti Nayak","Golu","Molu","Tolu"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Dashboard'),
        ),
         body:ListView.separated(itemBuilder: (context,index){
           return ListTile(
             leading: Text("${index+1}"),
             title: Text(arrname[index]),
             subtitle: Text("Number"),
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

        // This trailing comma makes auto-formatting nicer for build methods.
         ) );

  }
}
