import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  var colors = [Colors.red,const Color.fromARGB(255, 54, 244, 111), const Color.fromARGB(255, 54, 57, 244),const Color.fromARGB(255, 244, 54, 181)];
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: colors[(0+count)%4])),
          Expanded(child: Container(color: colors[(1+count)%4])),
          Expanded(child: Container(color: colors[(2+count)%4])),
          Expanded(child: Container(color: colors[(3+count)%4])),
          ElevatedButton(onPressed: (){
            count++;
            setState(() {});
            print("Button Pressed $count times");
          }, child: const Text('Press Me'))
        ])
    );
  }
}