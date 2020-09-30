import 'dart:async';
import 'package:animation/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.push(
            context, new MaterialPageRoute(builder: (context) => MyHome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 200.0,
                        child: Image.asset('assets/giphy.gif'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'ANIMATION',
                        style: TextStyle(
                            fontFamily: 'RubikMonoOne',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      'CONTROLLER',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Sriracha',
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          color: Colors.amber),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
