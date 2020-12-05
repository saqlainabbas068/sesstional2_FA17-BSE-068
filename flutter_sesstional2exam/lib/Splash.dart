import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.lightGreenAccent,
                backgroundImage: AssetImage("images/1.jpg"),
              ),
              Text(
                'MUHAMMAD Muhammad Saqlain Abbas',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FA17-BSE-068',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  letterSpacing: 9.5,
                  fontWeight: FontWeight.bold,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
