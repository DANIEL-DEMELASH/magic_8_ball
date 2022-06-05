// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumberImage = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text(
            "Ask AnyThing",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Center(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomNumberImage = 1 + Random().nextInt(5);
                  });
                },
                child: Image.asset('images/ball$randomNumberImage.png')),
          ),
        ),
      ),
    );
  }
}
