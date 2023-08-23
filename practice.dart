import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

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

  var emailText = TextEditingController();
  var password = TextEditingController();
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "LOG-IN PAGE",
            style: TextStyle(
                fontSize: 25,
                fontFamily: "bungee",
                fontWeight: FontWeight.bold),
          ),
          Container(
            height: 20,
          ),
          Container(
            width: 300,
            child: TextField(
              controller: emailText,
              decoration: InputDecoration(
                  hintText: "Enter Mobile number",
                  prefixIcon: Icon(Icons.phone_android),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          ),
          Container(
            height: 12,
          ),
          Container(
            width: 300,
            child: TextField(
              controller: password,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.key),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String uMail = emailText.text.toString();
                String uPass = password.text;
                print("Email:$uMail, Password:$uPass");
              },
              child: Text(
                "Log In",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
