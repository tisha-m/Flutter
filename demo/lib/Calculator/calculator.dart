// import 'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   const Calculator({super.key});

//   @override
//   State<Calculator> createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Calculator'),
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(child: TextField(controller: TextEditingController(),
//               )),
//               const SizedBox(width: 10),
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('MC'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('MR'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('M+'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('M-'),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('MS'),
//                   ),
//                   const SizedBox(width: 10),ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('Mv'),
//                   ),
//                   const SizedBox(width: 10),
//                 ],
//               ),
            
//             Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('%'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('CE'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('C'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('⌫'),
//                   ),
//                 ],
//               ),

//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('1/x'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('x^2'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('2√x'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('÷'),
//                   ),
//                 ],
//               ),

//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('7'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('8'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('9'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('x'),
//                   ),
//                   const SizedBox(width: 10),
//                 ],
//               ),

//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('4'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('5'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('6'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('-'),
//                   ),
//                   const SizedBox(width: 10),
//                 ],
//               ),
              
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('1'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('2'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('3'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('+'),
//                   ),
//                   const SizedBox(width: 10),
//                 ],
//               ),
              
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('+/-'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('0'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('.'),
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('='),
//                   ),
//                   const SizedBox(width: 10),
//                 ],
//               ),
//             ],
//           )
//           ],
//         )
//     );
//   }
// }

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            // Display
            TextField(
              controller: controller,
              textAlign: TextAlign.right,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            // Memory buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('MC'),
                  ),
                ),
                const SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('MR'),
                  ),
                ),
                const SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('M+'),
                  ),
                ),
                const SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('M-'),
                  ),
                ),
                const SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('MS'),
                  ),
                ),
                const SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Mv'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            // Row 1
            Row(
              children: [
                Expanded(child: calculatorButton('%')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('CE')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('C')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('⌫')),
              ],
            ),

            const SizedBox(height: 5),

            // Row 2
            Row(
              children: [
                Expanded(child: calculatorButton('1/x')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('x²')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('²√x')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('÷')),
              ],
            ),

            const SizedBox(height: 5),

            // Row 3
            Row(
              children: [
                Expanded(child: calculatorButton('7')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('8')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('9')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('×')),
              ],
            ),

            const SizedBox(height: 5),

            // Row 4
            Row(
              children: [
                Expanded(child: calculatorButton('4')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('5')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('6')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('-')),
              ],
            ),

            const SizedBox(height: 5),

            // Row 5
            Row(
              children: [
                Expanded(child: calculatorButton('1')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('2')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('3')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('+')),
              ],
            ),

            const SizedBox(height: 5),

            // Row 6
            Row(
              children: [
                Expanded(child: calculatorButton('+/-')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('0')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('.')),
                const SizedBox(width: 5),
                Expanded(child: calculatorButton('=')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget calculatorButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}