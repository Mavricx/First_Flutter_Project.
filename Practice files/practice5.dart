import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';

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
          backgroundColor: Colors.greenAccent,
          title: const Text('Priyanshu\'s First Apps'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: RoundedButton(
                btnname: "Log In",
                callBack: () {
                  print("Logged In");
                },
                textstyle: TextStyle(fontFamily: "bungee",fontSize:15),icon:Icon(Icons.lock),
              ),
            ),
            Container(
              height: 11,
            ),
            Container(
              width: 150,
              child: RoundedButton(
                btnname: "Play",
                callBack: () {
                  print("Playing");
                },
                textstyle: TextStyle(fontFamily: "bungee",fontSize: 20),icon:Icon(
                  Icons.play_arrow),
              ),
            ),
          ],
        ));
  }
}
