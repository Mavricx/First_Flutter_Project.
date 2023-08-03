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
var arrname=["piku","lora","Herra","Ashok kumar","Susama singh","Basanti Nayak"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Priyanshu\'1st app'),
        ),
         body:Center(
           child: InkWell(
             child: Container(
               child: Center(child: Text("PIKU",style: TextStyle(fontSize: 15),)),
               height: 55,
               width: 55,
             decoration: BoxDecoration(
               color: Colors.red,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
               border: Border.all(
                 width: 10,
                 color: Colors.pink
               ),
               boxShadow: [
                 BoxShadow(
                   blurRadius: 5,

                 )
               ]
             ),

             ),

           onTap: (){
               print("Hari");
           },),
         ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
