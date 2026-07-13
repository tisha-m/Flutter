import 'package:flutter/material.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  var colors = [
    Colors.red,const Color.fromARGB(255, 54, 244, 111), const Color.fromARGB(255, 54, 57, 244),const Color.fromARGB(255, 244, 54, 181)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: colors[0])),
          Expanded(child: Container(color: colors[1])),
          Expanded(child: Container(color: colors[2])),
          Expanded(child: Container(color: colors[3])),
          ElevatedButton(onPressed: (){}, child: Text('Press Me'))
        ])
    );
  }
}