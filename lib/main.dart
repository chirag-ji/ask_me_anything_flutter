import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BallPage()));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int num = 1;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: TextButton(
            child: Image.asset('images/ball$num.png'),
            onPressed: () => setState(() => num = random.nextInt(5) + 1)),
      ),
    );
  }
}
