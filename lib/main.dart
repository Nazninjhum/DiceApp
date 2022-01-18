import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int DiceNumber=6;
  int mDiceNumber=6;
  int nDiceNumber=6;
  int oDiceNumber=6;
  void diceChangeFace(){
    setState(() {
      DiceNumber=Random().nextInt(6)+1;
      mDiceNumber=Random().nextInt(6)+1;
      nDiceNumber=Random().nextInt(6)+1;
      oDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Color(0xff2C3A47),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff303952),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),
                child: Row(
                  children: [
                    Expanded(child: Image(image: AssetImage('images/dice$DiceNumber.png'),)),
                    Expanded(child: Image(image: AssetImage('images/dice$mDiceNumber.png'),)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),
                child: Row(
                  children: [
                    Expanded(child: Image(image: AssetImage('images/dice$nDiceNumber.png'),)),
                    Expanded(child: Image(image: AssetImage('images/dice$oDiceNumber.png'),)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15,bottom: 15,left: 50,right: 50),
                child: Row(
                  children: [
                    Expanded(child: RaisedButton(
                      onPressed: (){
                        diceChangeFace();
                      },
                      color: Color(0xff6D214F),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                      padding: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 5),
                      child: Text('DiceButton',style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),),
                  ],),),
            ],
          ),
        ),
      ),
    );
  }
}

