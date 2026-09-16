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

//EXERISE.dart
// import 'package:flutter/material.dart';
// import 'exercise.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Student Registration',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const RegistrationPage(),
//     );
//   }
// }

//CALCULATOR.dart
// import 'package:flutter/material.dart';
// import './Calculator/calculator.dart';

// void main() {
//   runApp(const CalculatorWidget());
// }

// class CalculatorWidget extends StatelessWidget {
//   const CalculatorWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const Calculator(),
//     );
//   }
// }

//LOGIN.dart
// import 'package:demo/Stopwatch/login.dart';
// import 'InputControl/inputtextcontrol.dart';
// import 'package:flutter/material.dart';

//image.dart
import 'package:flutter/material.dart';
import 'resources/imagestring.dart';
import 'controls/imagedisp.dart';

void main() {
  runApp(const StopwatchRun());
}

class StopwatchRun extends StatelessWidget {
  const StopwatchRun({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageDisp(),
      );
  }
}