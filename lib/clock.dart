import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class clockApp extends StatefulWidget {
  const clockApp({super.key});

  @override
  State<clockApp> createState() => _clockAppState();
}

class _clockAppState extends State<clockApp> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${_dateTime.hour}:${_dateTime.minute}:${_dateTime.second}',
              style: const TextStyle(fontSize: 70),
            ),
          ],
        ),
      ),
    );
  }
}
