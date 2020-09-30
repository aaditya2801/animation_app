import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animation/bat.dart';
import 'package:animation/joker.dart';
import 'package:animation/skull.dart';
import 'package:animation/hammer.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: animatedBody(),
    );
  }
}

// ignore: camel_case_types
class animatedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Card(
            child: Image.asset('assets/Rk69.gif'),
          ),
          Card(
            color: Colors.black,
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
                side: BorderSide(width: 5, color: Colors.black)),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.blue)),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyA1()));
                final play = AudioCache();
                play.play('skull_henshin_v2.mp3');
              },
              child: TextLiquidFill(
                text: 'SKUll ANIMATION',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 80.0,
              ),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
                side: BorderSide(width: 5, color: Colors.black)),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.red)),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyA2()));
                final play = AudioCache();
                play.play('batman.mp3');
              },
              child: TextLiquidFill(
                text: 'BAT ANIMATION',
                waveColor: Colors.redAccent,
                boxBackgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 80.0,
              ),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
                side: BorderSide(width: 5, color: Colors.black)),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.purple)),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyA3()));
                final play = AudioCache();
                play.play('why_so_serious.mp3');
              },
              child: TextLiquidFill(
                text: 'JOKER ANIMATION',
                waveColor: Colors.purpleAccent,
                boxBackgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 80.0,
              ),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
                side: BorderSide(width: 5, color: Colors.black)),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.amber)),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyA4()));
                final play = AudioCache();
                play.play('thor_2.mp3');
              },
              child: TextLiquidFill(
                text: 'THOR ANIMATION',
                waveColor: Colors.amberAccent,
                boxBackgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 80.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
