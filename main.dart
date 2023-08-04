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
         body:Container(
           color: Colors.blueGrey,
           margin: EdgeInsets.all(23),
           padding: EdgeInsets.all(24),
           child: Text("PIKUL IS COOL",style: TextStyle(fontSize: 25,color: Colors.white),),

         )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
