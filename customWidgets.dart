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
        textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 21, fontFamily: 'fontStylish')),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text('Priyanshu\'s First App'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 18,
                child: Container(
                  color: Colors.blue,
                  child:ListView.builder(itemBuilder: (context,index)=>SizedBox(
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: CircleAvatar(backgroundColor: Colors.green,



                        ),
                      )),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Expanded(
                  flex: 50,
                  child: Container(
                    color: Colors.greenAccent,
                  )),
              Expanded(
                flex: 15,
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
              Expanded(
                flex: 25,
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
              Expanded(
                flex: 25,
                  child: Container(
                color: Colors.redAccent,
              ))
            ],
          ),
        ));
  }
}
