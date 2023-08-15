mport 'package:flutter/material.dart
'
;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

  var colors = [
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.grey,
    Colors.yellow,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    var dob = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [GridView.count(
            crossAxisCount: 3, //keeps no of containter fix in each row
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
              Container(color: Colors.pink,),
              Container(color: Colors.grey,),
              Container(color: Colors.yellow,),
              Container(color: Colors.black,),
            ],),
            Container(
              height: 200,
            ),
            Container(
              child: GridView.extent(maxCrossAxisExtent: 75,
                //keeps size if the container fix in the row
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Container(color: Colors.green,),
                  Container(color: Colors.blue,),
                  Container(color: Colors.pink,),
                  Container(color: Colors.grey,),
                  Container(color: Colors.yellow,),
                  Container(color: Colors.black,),
                ],),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 11),
              itemBuilder: (context, index) {
                return Container(color: colors[index],);
              },
              itemCount: colors.length,)

          ],)
    );
  }


}
