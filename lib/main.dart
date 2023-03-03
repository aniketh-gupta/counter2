import 'package:flutter/material.dart';
import 'counter_screen.dart';

void main() {
  runApp(simplecounterapp());
}

class simplecounterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(),
    );
  }
}
