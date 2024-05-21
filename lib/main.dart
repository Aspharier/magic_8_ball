import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Center(
            child: Text(
              'Ask My Anything',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 3,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: BallApp(),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class BallApp extends StatefulWidget {
  const BallApp({super.key});

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballFaceNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 1,
        child: TextButton(
          onPressed: () {
            setState(() {
              ballFaceNum = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballFaceNum.png'),
        ),
      ),
    );
  }
}
