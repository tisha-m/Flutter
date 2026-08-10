import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // Branch
  bool isCE = false;
  bool isIT = false;

  // Gender
  String? gender;

  // Division
  String? division;

  // Programming efficiency
  double efficiency = 1;

  // Languages
  bool hindi = false;
  bool english = false;
  bool gujarati = false;

  // Submitted data
  bool submitted = false;

  void submitForm() {
    if (nameController.text.isEmpty ||
        ageController.text.isEmpty ||
        emailController.text.isEmpty ||
        gender == null ||
        division == null ||
        (!isCE && !isIT)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all required details.'),
        ),
      );
      return;
    }

    setState(() {
      submitted = true;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    emailController.dispose();
    super.dispose();
  }

  Widget detailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: Text(
              '$title:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Student Name
            const Text(
              'Student Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter student name',
              ),
            ),

            const SizedBox(height: 20),

            // Branch
            const Text(
              'Branch',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Checkbox(
                  value: isCE,
                  onChanged: (value) {
                    setState(() {
                      isCE = value ?? false;

                      if (isCE) {
                        isIT = false;
                      }
                    });
                  },
                ),
                const Text('CE'),

                const SizedBox(width: 20),

                Checkbox(
                  value: isIT,
                  onChanged: (value) {
                    setState(() {
                      isIT = value ?? false;

                      if (isIT) {
                        isCE = false;
                      }
                    });
                  },
                ),
                const Text('IT'),
              ],
            ),

            const SizedBox(height: 10),

            // Gender
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row(
              children: [
                Radio<String>(
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                const Text('Male'),

                const SizedBox(width: 20),

                Radio<String>(
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),

            const SizedBox(height: 10),

            // Division
            const Text(
              'Division',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
              value: division,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select Division',
              ),
              items: ['A', 'B', 'C', 'D', 'E', 'F', 'G']
                  .map(
                    (div) => DropdownMenuItem(
                      value: div,
                      child: Text(div),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  division = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // Age
            const Text(
              'Age',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter age',
              ),
            ),

            const SizedBox(height: 20),

            // Email
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email',
              ),
            ),

            const SizedBox(height: 20),

            // Programming Efficiency
            const Text(
              'Programming Languages Efficiency',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            Slider(
              value: efficiency,
              min: 1,
              max: 15,
              divisions: 14,
              label: efficiency.round().toString(),
              onChanged: (value) {
                setState(() {
                  efficiency = value;
                });
              },
            ),

            Center(
              child: Text(
                'Level: ${efficiency.round()} / 15',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Languages Known
            const Text(
              'Language Known',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            CheckboxListTile(
              title: const Text('Hindi'),
              value: hindi,
              contentPadding: EdgeInsets.zero,
              onChanged: (value) {
                setState(() {
                  hindi = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('English'),
              value: english,
              contentPadding: EdgeInsets.zero,
              onChanged: (value) {
                setState(() {
                  english = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Gujarati'),
              value: gujarati,
              contentPadding: EdgeInsets.zero,
              onChanged: (value) {
                setState(() {
                  gujarati = value ?? false;
                });
              },
            ),

            const SizedBox(height: 15),

            // Submit Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: submitForm,
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Display submitted details
            if (submitted) ...[
              const Divider(thickness: 2),

              const SizedBox(height: 15),

              const Text(
                'Submitted Details',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      detailRow(
                        'Student Name',
                        nameController.text,
                      ),

                      detailRow(
                        'Branch',
                        isCE ? 'CE' : 'IT',
                      ),

                      detailRow(
                        'Gender',
                        gender!,
                      ),

                      detailRow(
                        'Division',
                        division!,
                      ),

                      detailRow(
                        'Age',
                        ageController.text,
                      ),

                      detailRow(
                        'Email',
                        emailController.text,
                      ),

                      detailRow(
                        'Programming Efficiency',
                        '${efficiency.round()} / 15',
                      ),

                      detailRow(
                        'Languages Known',
                        [
                          if (hindi) 'Hindi',
                          if (english) 'English',
                          if (gujarati) 'Gujarati',
                        ].isEmpty
                            ? 'None'
                            : [
                                if (hindi) 'Hindi',
                                if (english) 'English',
                                if (gujarati) 'Gujarati',
                              ].join(', '),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
