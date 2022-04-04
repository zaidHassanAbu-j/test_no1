import 'package:flutter/material.dart';
import 'login.dart';
import 'signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text("Welcome", style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
               // light
              ),),
              ), 
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top:20, bottom: 60),
                child: Text("My Shop",style: TextStyle(
              fontSize: 23,
              color: Colors.red,
              fontWeight: FontWeight.normal, // light
              ),),
              ),
            ),
            Image.asset('img/shop.png'),
             SizedBox(height: 90,),
             TextButton(
              style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                primary:Colors.white,
                backgroundColor: Colors.blue,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
              child: Text('Login')),
              SizedBox(height: 20,),  
              TextButton(
              style: TextButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                primary:Colors.white,
                backgroundColor: Colors.blue,
                ),            
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
              child: Text('SignUp')),
          ],
        ), 
    )
    );
  }
}
