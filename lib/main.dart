import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 ball',
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballNumber = 1;
  Random random = new Random();

  void changeBall() {
    setState(() {
      ballNumber = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          onPressed: () => changeBall(),
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
