import 'package:animation/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: AppBar(
        //title: Text('My Ani'),
        // ),
        body: SplashScreen(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
