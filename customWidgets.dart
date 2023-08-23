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

  var arrname = [
    "Piku",
    "Lora",
    "Heera Bhalu",
    "Ashok kumar",
    "Susama Singh",
    "Basanti Nayak",
    "Golu",
    "Molu",
    "Tolu"
  ];
  var relation = [
    "Myself",
    "Sister",
    "Sister",
    "Father",
    "Mother",
    "GrandMother",
    "Stranger",
    "Stranger",
    "Stranger"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Priyanshu\'s First App'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 18,
                child: Container(
                  color: Colors.blue,
                  child: ListView.builder(
                    itemBuilder: (context, index) => SizedBox(
                        width: 80,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: CircleAvatar(
                            backgroundImage:AssetImage("assets/images/heera.jpg"),
                            radius: 28,
                          ),
                        ),),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Expanded(
                  flex: 50,
                  child: Container(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Card(
                        elevation: 12,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/heera.jpg"),
                            radius: 25,
                          ),
                          title: Text(
                            arrname[index],
                            style: TextStyle(fontSize: 25),
                          ),
                          subtitle: Text(
                            relation[index],
                            style: TextStyle(fontSize: 15),
                          ),
                          trailing: Icon(Icons.add),
                        ),
                      );

                    },itemCount: arrname.length,),

                  )),
              Expanded(
                flex: 15,
                child: Container(
                  color:Colors.blueGrey,
                  child: ListView.builder(itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                        child: Center(child: Text("Pikachu",style: TextStyle(fontSize: 30,fontFamily: "bungee",fontWeight: FontWeight.bold),)),
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(11)
                        ),
                      ),
                    );
                  },itemCount: 4,
                  scrollDirection: Axis.horizontal,)
                  ,
                ),
              ),
              Expanded(
                flex: 25,
                child: Container(
                  color: Colors.greenAccent,

                  child: Center(child: Text("Piku",style: TextStyle(fontSize: 40,fontFamily: "bungee",fontWeight: FontWeight.bold),)),

                ),),
              Expanded(
                  flex: 25,
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text("Piku",style: TextStyle(fontSize: 40,fontFamily: "bungee",fontWeight: FontWeight.bold),)),

                  ))
            ],
          ),
        ));
  }
}
