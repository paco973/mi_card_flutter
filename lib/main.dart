import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'Mi Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Mypage(),
      ),
    ),
  );
}

class Mypage extends StatefulWidget {
  @override
  _MypageState createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  int ball = 0;
  randomball() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal),
      ),
      onPressed: () => randomball(),
      child: Center(
        child: Container(
          child: ball == 0
              ? Icon(
                  Icons.touch_app,
                  size: 200,
                )
              : Image.asset('images/ball$ball.png'),
          width: double.infinity,
        ),
      ),
    );
  }
}
