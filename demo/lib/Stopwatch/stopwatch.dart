import 'package:flutter/material.dart';
import 'dart:async';

class StopWatchExample extends StatefulWidget {
  const StopWatchExample({super.key});
  @override
  State<StopWatchExample> createState() => _StopWatchExampleState();
}

class _StopWatchExampleState extends State<StopWatchExample> {
  //int seconds = 0
  int milliseconds = 0;
  final laps = <int>[];
  late Timer timer;
  bool isRunning = false;

  void _lap() {
    setState(() {
      laps.add(milliseconds);
      milliseconds = 0;
    });
    print(laps);
  }

    void _clear() {
    setState(() {
      laps.clear();
      milliseconds = 0;
    });
  }

  Widget buildCounter(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lap ${laps.length + 1}',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
        ),
        Text(
          _millisToSecond(milliseconds),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
        )
      ],
    ));
  }

  @override
  void initState() {
    super.initState();
    }

  @override
  void dispose() {
    super.dispose();
  }

    void _onTick(Timer timer) {
        setState(() {
          if(isRunning){
            //seconds++;
            milliseconds += 100;
          }
      });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), _onTick);
    setState(() {
      //seconds = 0;
      milliseconds = 0;
      isRunning = true;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  // void _pauseTimer(){
  //   setState(() {
  //     isRunning = false;
  //   });
  // }

  // void _resumeTimer() {
  //   setState(() {
  //     isRunning = true;
  //   });
  // }

  // String _secondsToText() => seconds == 1 ? 'second' : 'seconds';
  String _millisToSecond(millis) {
    final seconds = (millis / 1000);
    return '$seconds seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              _millisToSecond(milliseconds),
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _startTimer,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Start'),
              ),
              const SizedBox(width: 20),
              
              // ElevatedButton(
              //   onPressed: isRunning ? _pauseTimer : null,
              //   style: ButtonStyle(
              //     backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 54, 98, 244)),
              //     foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              //   ),
              //   child: const Text('Pause'),
              // ),
              // const SizedBox(width: 20),
              
              // ElevatedButton(
              //   onPressed: isRunning ? null : _resumeTimer,
              //   style: ButtonStyle(
              //     backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 244, 152, 54)),
              //     foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              //   ),
              //   child: const Text('Resume'),
              // ),
              // const SizedBox(width: 20),

              ElevatedButton(
                onPressed: _stopTimer,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Stop'),
              ),
              const SizedBox(width: 20),

              ElevatedButton(
                onPressed: _lap,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 244, 181, 54)),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Lap'),
              ),
              const SizedBox(width: 20),
              
              ElevatedButton(
                onPressed: _clear,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 54, 124, 244)),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Clear'),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],)
    );
  }
}