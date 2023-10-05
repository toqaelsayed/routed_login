import 'package:flutter/material.dart';

import 'Mysecondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final user =TextEditingController();
  final password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(
        height: 120,
      ),
      SizedBox(
        child: Icon(
          Icons.diamond_outlined,
          size: 50,
          color: Color(0xff74388c),
        ),
      ),
      SizedBox(
        child: Text(
          "SHRINE",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff74388c),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.all(80),
        child: Form(

          child: Column(
            children: [
              TextFormField(
                controller:user,
                decoration: InputDecoration(
                    fillColor: Color(0xffd5c7d4),
                    filled: true,
                    hintText: "UserName",
                    hintStyle: TextStyle(color: Color(0xff855ea1)),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.deepPurpleAccent,
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1.0))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password ,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Color(0xffd5c7d4),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                    prefixIcon: Icon(Icons.password_rounded),
                    prefixIconColor: Colors.deepPurpleAccent,
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1.0))),
              ),
              SizedBox(
                height: 30,
              ),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Color(0xff855ea1),
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {
                            user.clear();
                            password.clear();
                          },
                          child: Text(
                            "CANCEL",
                            style: TextStyle(color: Color(0xff855ea1)),
                          ))),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Color(0xff855ea1),)
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(  context  ,
                            MaterialPageRoute(builder: (context) =>
                            Mysecondscreen(username: "Welcome ${user.text}"
                              ,pass: password.text,
                            ) ,
                        )); },
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Color(0xff855ea1)),


                      ),

                    ),

                  )
                ],
              )
            ],
          ),
        ),
      )
    ])));
  }
}
