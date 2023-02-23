import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Magic 8 Ball"
          ),
        ),
        body: const Ball(),
        backgroundColor: Colors.blue.shade100,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    int randNum = Random().nextInt(5) + 1;
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            randNum = Random().nextInt(5) + 1;
          });
        },
          child: Image.asset('images/ball$randNum.png')
      ),
    );
  }
}



