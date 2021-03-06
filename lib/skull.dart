import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInCirc)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            color: Colors.black,
            elevation: 15 * animation.value,
            child: GestureDetector(
              onTap: () {
                myanicon.forward(from: 0.5);
                print("clicked ..");
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 100.0,
                    child: TextLiquidFill(
                      text: 'S K U L L',
                      waveColor: Colors.blueAccent,
                      boxBackgroundColor: Colors.black,
                      textStyle: TextStyle(
                        fontFamily: 'LuckiestGuy',
                        fontSize: 29.0,
                        fontWeight: FontWeight.bold,
                      ),
                      boxHeight: 100.0,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: 300 * animation.value + 50,
                    height: 300 * animation.value + 50,
                    color: Colors.black,
                    child: Center(child: Image.asset('assets/skull2.gif')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
