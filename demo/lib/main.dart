// // import './Stopwatch/stopwatch.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const StopwatchRun());
// // }

// // class StopwatchRun extends StatelessWidget {
// //   const StopwatchRun({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: StopWatchExample(),
// //       );
// //   }
// // }

import 'package:flutter/material.dart';
import 'exercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const RegistrationPage(),
    );
  }
}