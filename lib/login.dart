import 'dart:developer';
import 'package:flutter/material.dart';
import 'signUp.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10,left:30,right: 30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                child:Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),),
            SizedBox(
              height: 90,
            ),
            Center(
              child: Text("Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
            ), 
            SizedBox(
              height: 35,
            ),
             Text('Email',style: TextStyle(color: Color.fromARGB(255, 161, 161, 157)),),
            Center(
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  //label: Text('Email'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            SizedBox(height: 35),
            Text('Password',style: TextStyle(color: Color.fromARGB(255, 161, 161, 157))),
            Center(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  //label: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text("Dont have an account?")),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      child:Text('Sign Up') 
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}