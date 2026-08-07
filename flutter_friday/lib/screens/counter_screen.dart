import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',),
        // actions: [
        // IconButton(onPressed: (){}, icon: Icon(Icons.person))
        // ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value:'),
            Text('0', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}