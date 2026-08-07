import 'package:flutter/material.dart';
import 'dart:async';
import'counter_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CounterScreen(),)
          );
        });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: Icon(Icons.flutter_dash)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Developed by: "),
              Text("Ally Soft Solutions"),
            ],
          )
        ],
      )
    );
  }
}