import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    var dob = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Date: ${DateFormat(" yMMMMd").format(time)}",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: "bungee",
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 30,
            ),
            Text(
              "Current Time ${DateFormat("Hms").format(time)}",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: "bungee",
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Refresh Time")),
            Container(
              height: 20,
            ),
            Text(
              "Choose your Date of Birth",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: "bungee",
                  fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              child: Text("Choose DOB"),
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1960),
                    lastDate: DateTime(3000));
                if (datePicked != null) {
                  setState(() {
                    dob = datePicked;
                    print("${dob.year}-${dob.month}-${dob.day}");
                  });
                }
              },
            ),
            Text("Choose time of your Birth",style: TextStyle(fontSize: 17,
                fontFamily: "bungee",
                fontWeight: FontWeight.bold),),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay ? pickedTime =await  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input,
                  );
                  if(pickedTime!=null){
                    print("Time picked :${pickedTime.hour}:${pickedTime.minute}");
                  }
                },
                child: Text("Select Time",))

          ],
        ),
      ),
    );
  }
}
