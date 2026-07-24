import 'package:flutter/material.dart';
import 'screens/todo_screen.dart';
//import 'screens/counter_screen.dart';
//import 'color_page.dart';

void main() {
  runApp(TodoWidget());
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}

// counter page:
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //     colorScheme: .fromSeed(seedColor: Colors.pink),
  //     ),
  //     home: CounterScreen()
  //   );
  // }

// color page:
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: ColorPage(),
  //   );
  // }
//}