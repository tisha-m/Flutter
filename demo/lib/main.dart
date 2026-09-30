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
// import 'package:demo/controls/gridview.dart';
// import 'package:demo/controls/scrollviewimage.dart';
// import 'package:demo/controls/tabview.dart';
// import 'package:flutter/material.dart';
// import 'resources/imagestring.dart';
// import 'controls/imagedisp.dart';

//techfest.dart
import 'package:flutter/material.dart';
import 'package:demo/techfest/register.dart';
import 'package:demo/techfest/tabviewTech.dart';
import 'package:demo/controls/localjson.dart';
void main() {
  runApp(const StopwatchRun());
}

class StopwatchRun extends StatelessWidget {
  const StopwatchRun({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserForm(),
      );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MemberApp());
// }

// class MemberApp extends StatelessWidget {
//   const MemberApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Member App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MemberPage(),
//     );
//   }
// }

// class MemberPage extends StatefulWidget {
//   const MemberPage({super.key});

//   @override
//   State<MemberPage> createState() => _MemberPageState();
// }

// class _MemberPageState extends State<MemberPage> {
//   // Controllers
//   final TextEditingController nameController = TextEditingController();

//   // Form values
//   String role = 'Student';
//   bool paid = false;

//   // Used while editing
//   int? editingID;

//   // List of members
//   List<Map<String, dynamic>> members = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadMembers();
//   }

//   // Load records from SharedPreferences
//   Future<void> _loadMembers() async {
//     final prefs = await SharedPreferences.getInstance();

//     final String? data = prefs.getString('members');

//     if (data != null) {
//       final List decodedData = jsonDecode(data);

//       setState(() {
//         members = decodedData
//             .map((item) => Map<String, dynamic>.from(item))
//             .toList();
//       });
//     }
//   }

//   // Save the complete list into SharedPreferences
//   Future<void> _persist() async {
//     final prefs = await SharedPreferences.getInstance();

//     final String data = jsonEncode(members);

//     await prefs.setString('members', data);
//   }

//   // Save or update member
//   Future<void> saveOrUpdate() async {
//     String name = nameController.text.trim();

//     // Empty name validation
//     if (name.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Member name cannot be empty'),
//         ),
//       );
//       return;
//     }

//     if (editingID == null) {
//       // -------------------------
//       // ADD NEW MEMBER
//       // -------------------------

//       final newMember = {
//         'id': DateTime.now().millisecondsSinceEpoch,
//         'name': name,
//         'role': role,
//         'paid': paid,
//       };

//       setState(() {
//         members.add(newMember);
//       });
//     } else {
//       // -------------------------
//       // UPDATE MEMBER
//       // -------------------------

//       final index = members.indexWhere(
//         (member) => member['id'] == editingID,
//       );

//       if (index != -1) {
//         setState(() {
//           members[index] = {
//             'id': editingID,
//             'name': name,
//             'role': role,
//             'paid': paid,
//           };
//         });
//       }
//     }

//     await _persist();

//     clearForm();
//   }

//   // Load selected member into form
//   void editMember(Map<String, dynamic> member) {
//     setState(() {
//       nameController.text = member['name'];
//       role = member['role'];
//       paid = member['paid'];
//       editingID = member['id'];
//     });
//   }

//   // Cancel editing / clear form
//   void clearForm() {
//     setState(() {
//       nameController.clear();
//       role = 'Student';
//       paid = false;
//       editingID = null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Member Details'),
//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(16),

//         child: Column(
//           children: [

//             // -------------------------
//             // MEMBER NAME
//             // -------------------------

//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 labelText: 'Member Name',
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             const SizedBox(height: 15),

//             // -------------------------
//             // ROLE RADIO BUTTONS
//             // -------------------------

//             Row(
//               children: [
//                 const Text(
//                   'Role:',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 Radio<String>(
//                   value: 'Student',
//                   groupValue: role,
//                   onChanged: (value) {
//                     setState(() {
//                       role = value!;
//                     });
//                   },
//                 ),

//                 const Text('Student'),

//                 Radio<String>(
//                   value: 'Volunteer',
//                   groupValue: role,
//                   onChanged: (value) {
//                     setState(() {
//                       role = value!;
//                     });
//                   },
//                 ),

//                 const Text('Volunteer'),
//               ],
//             ),

//             // -------------------------
//             // PAID CHECKBOX
//             // -------------------------

//             CheckboxListTile(
//               contentPadding: EdgeInsets.zero,
//               title: const Text('Paid Fee'),
//               value: paid,
//               onChanged: (value) {
//                 setState(() {
//                   paid = value ?? false;
//                 });
//               },
//             ),

//             const SizedBox(height: 5),

//             // -------------------------
//             // SAVE / UPDATE BUTTON
//             // -------------------------

//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: saveOrUpdate,
//                 child: Text(
//                   editingID == null ? 'Save' : 'Update',
//                 ),
//               ),
//             ),

//             // -------------------------
//             // CANCEL BUTTON
//             // Only shown during editing
//             // -------------------------

//             if (editingID != null)
//               SizedBox(
//                 width: double.infinity,
//                 child: OutlinedButton(
//                   onPressed: clearForm,
//                   child: const Text('Cancel'),
//                 ),
//               ),

//             const SizedBox(height: 15),

//             const Divider(),

//             const Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Saved Members',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 10),

//             // -------------------------
//             // LISTVIEW.BUILDER
//             // -------------------------

//             Expanded(
//               child: members.isEmpty
//                   ? const Center(
//                       child: Text('No members saved'),
//                     )
//                   : ListView.builder(
//                       itemCount: members.length,
//                       itemBuilder: (context, index) {

//                         final member = members[index];

//                         return Card(
//                           child: ListTile(

//                             // Member name
//                             title: Text(
//                               member['name'],
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),

//                             // Role + paid status
//                             subtitle: Text(
//                               'Role: ${member['role']}'
//                               '\nFee Paid: ${member['paid'] ? 'Yes' : 'No'}',
//                             ),

//                             // Edit button
//                             trailing: IconButton(
//                               icon: const Icon(Icons.edit),
//                               onPressed: () {
//                                 editMember(member);
//                               },
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
// }