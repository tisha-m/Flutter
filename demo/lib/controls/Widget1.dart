// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:demo/controls/Widget2.dart';

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
  int tempIndex = 0;

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

    void _update_index(index){
    tempIndex = index;
    nameCtrl.text = items[index]['name'];
    gender = items[index]['gender'];
    agree = items[index]['agree'];
  }

  Future<void> _update() async{
    if(nameCtrl.text.trim().isEmpty) return;
    items[tempIndex] = ({
      'name': nameCtrl.text,
      'gender': gender,
      'agree': agree,
    });

    final pref = await SharedPreferences.getInstance();
    await pref.setString(_key, jsonEncode(items));
    nameCtrl.clear();
    setState(() {
      gender = 'M';
      agree = false;
    });
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
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value! ),
            ),

            RadioListTile<String>(
              title: const Text('Female'),
              value: 'F',
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
            ElevatedButton(
              onPressed: _update,
              child: const Text('Update'),
            ),
            const SizedBox(height: 20),
        ],
        )));
  }
}