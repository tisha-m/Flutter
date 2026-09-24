import 'package:flutter/material.dart';

class Tabviewtech extends StatefulWidget {
  const Tabviewtech({super.key});

  @override
  State<Tabviewtech> createState() => _TabviewtechState();
}

class _TabviewtechState extends State<Tabviewtech> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TechNova'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.play_arrow), text: 'Play'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Content')),
            Center(child: Text('Settings Content')),
            Center(child: Text('Play Content')),
          ],
        ),
      ),
    );
  }
}