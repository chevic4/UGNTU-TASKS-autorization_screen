import 'package:flutter/material.dart';

class Swicha_demo extends StatefulWidget {
  const Swicha_demo({Key? key}) : super(key: key);

  @override
  _Swicha_demoState createState() => _Swicha_demoState();
}

class _Swicha_demoState extends State<Swicha_demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(children: [
      Checkbox(value: false, onChanged: (val) {}),
    ]))));
  }
}
