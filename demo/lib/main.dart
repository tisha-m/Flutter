import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App',
          style:  TextStyle(
            color: Colors.white,  
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman')),   
          backgroundColor: const Color.fromARGB(255, 3, 32, 57),
          leading : const Icon(Icons.menu),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 22, 85, 136),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button Pressed');
                    },
                    child: const Text('Press Me'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  color: Color.fromARGB(255, 136, 22, 49),
                  child: const Center(
                    child: Text('This is a Flutter App',
                      style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),Expanded(
                child: Container(
                  height: 100,
                  color: Color.fromARGB(255, 4, 75, 30),
                  child: const Center(
                    child: Text('Welcome to My App',
                      style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}