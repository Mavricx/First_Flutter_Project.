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
            displayLarge: TextStyle(fontSize: 21, fontFamily: 'fontStylish')),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var emailText=TextEditingController();
  var password=TextEditingController();
  // var arrname = [
  //   "Piku",
  //   "Lora",
  //   "Heera Bhalu",
  //   "Ashok kumar",
  //   "Susama Singh",
  //   "Basanti Nayak",
  //   "Golu",
  //   "Molu",
  //   "Tolu"
  // ];
  // var relation = [
  //   "Myself",
  //   "Sister",
  //   "Sister",
  //   "Father",
  //   "Mother",
  //   "GrandMother",
  //   "Stranger",
  //   "Stranger",
  //   "Stranger"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('User Login'),
    ),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("LOG-IN PAGE",style: TextStyle(fontSize: 25,fontFamily: "bungee",fontWeight: FontWeight.bold),),
          Container(
            height: 20,
          ),
          Container(
            width: 300,
            child: TextField(
              controller: emailText,
              decoration: InputDecoration(
                hintText: "Enter Email adress",
                  prefixIcon: Icon(
                      Icons.email
                  ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.black
                  )

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.blue

                  )
                )
              ),

            ),
          ),
          Container(
            height: 12,
          ),
          Container(
            width: 300,
            child:  TextField(
              controller: password,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText:"Enter Your Password",
                suffixIcon: Icon(
                  Icons.remove_red_eye
                ),
                prefixIcon: Icon(
                  Icons.key
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                      
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.blue
                  )
                )
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            String uMail=emailText.text.toString();
            String uPass=password.text;
            print("Email:$uMail, Password:$uPass");
          }, child: Text("Log In",style: TextStyle(fontSize: 20),)
          )
        ],
      ),

    );
  }
}
