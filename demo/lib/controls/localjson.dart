// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final nameCtrl = TextEditingController();
  String gender = 'M';
  bool agree = false;
  List<Map<String, dynamic>> items = [];
  static const _key = 'entries';

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    nameCtrl.dispose();
    super.dispose();
  }

  Future<void> _load() async{
    final pref = await SharedPreferences.getInstance();
    final raw = pref.getString(_key);
    if(raw == null) return;
    final list = jsonDecode(raw) as List;
    setState(() => { items = list.cast<Map<String, dynamic>>() });
  }

  Future<void> _save() async{
    if(nameCtrl.text.trim().isEmpty) return;
    items.add({
      'name': nameCtrl.text,
      'gender': gender,
      'agree': agree,
    });
   final pref = await SharedPreferences.getInstance();
    await pref.setString(_key, jsonEncode(items));
    nameCtrl.clear();
    setState(() => { gender = 'M', agree = false });
  }

 

  Future<void> _delete(index) async{
    items.removeAt(index);
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_key, jsonEncode(items));
    setState(() {});
  }

  Future<void> _update(index) async{
    items.removeAt(index);
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_key, jsonEncode(items));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            
            RadioListTile<String>(
              title: const Text('Male'),
              value: 'M',
              // ignore: deprecated_member_use
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value! ),
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'F',
              // ignore: deprecated_member_use
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value! ),
            ),
            
            CheckboxListTile(
              title: const Text('Agree'),
              value: agree,
              onChanged: (value) => setState(() => agree = value! ),
            ),
            ElevatedButton(
              onPressed: _save,
              child: const Text('Save'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final i1 = items[index];
                return ListTile(
                  title: Text('Name: ${i1['name']}'),
                  subtitle: Text(
                    'Gender: ${i1['gender']}, Agree: ${i1['agree']}'),
                  
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _delete(index),
                  ),

                  leading: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _update(index),
                  ),
                );
              },
            )),
        ],
        )));
  }
}