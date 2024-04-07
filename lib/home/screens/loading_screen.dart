import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:me_storage/home/screens/enterscreen.dart';
import 'package:me_storage/home/styles/styles.dart';

class LoadupScreen extends StatelessWidget {
  const LoadupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoadingScreen(
      key: super.key,
      title: "meStorage Loading...",
    ));
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  MyLoadingState createState() => MyLoadingState();
}

class MyLoadingState extends State<LoadingScreen> {
  void _incrementCounter() {
    setState(
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EnterScreen()),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1200), _incrementCounter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        body: Container(
          decoration: customBackground(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 250,
                  child: LinearProgressIndicator(
                    backgroundColor: Color.fromARGB(255, 153, 209, 255),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 31, 89, 137)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
