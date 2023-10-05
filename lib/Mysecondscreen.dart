import 'package:flutter/material.dart';

class Mysecondscreen extends StatefulWidget {
  var username;
  var pass;
  Mysecondscreen({this.username, this.pass, super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Container(
        padding: EdgeInsets.all(100),
        child: Center(
          child: Column(
            children: [
              Text("${widget.username}",),

              Text("${widget.pass}"),
              //
              // TextButton(onPressed: (){
              //
              //   Navigator.pop(context);
              // }, child: Icon(Icons.backpack))
            ],
          ),
        ),
      ),
    );
  }
}
