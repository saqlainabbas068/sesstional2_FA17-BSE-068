import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
class Simple extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Simple> {
  int LeftButton = 1;
  int RightButton = 1;
  int countleft=0;
  int countright=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Simple'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    //flex: 2,
                      child:  RaisedButton(
                        onPressed: (){
                          if(countleft>countright){
                            Alert(
                              context: context,
                              title: 'Winer',
                              desc:
                              'Left Dice is Winer',
                            ).show();
                          }
                          else if(countright>countleft){
                            Alert(
                              context: context,
                              title: 'Winer',
                              desc:
                              'Right Dice is Winer',
                            ).show();
                          }
                          else{
                            Alert(
                              context: context,
                              title: 'Winer',
                              desc:
                              'Both Dice are Same',
                            ).show();
                          }
                          countleft=0;
                          countright=0;

                        },
                        child: Text(
                          'Winer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    //flex: 2,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            RandNum();
                          });
                        },
                        child: Image.asset('images/dice$LeftButton.png')
                    ),
                  ),
                  Expanded(
                    //flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            RandNum();
                          });
                        },
                        child: Image.asset('images/dice$RightButton.png')
                    ),
                  ),
                ],
              ),
            ],
          ),


        ),
      ),
    );
  }
  void RandNum(){
    LeftButton = Random().nextInt(6) + 1;
    RightButton = Random().nextInt(6) + 1;
    countleft=countleft+LeftButton;
    countright=countright+RightButton;
  }
}
