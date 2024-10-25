import 'package:flutter/material.dart';
import 'package:skill_up/screens/logIn.dart';

void main() {
  runApp(const skillUp());
}

class skillUp extends StatelessWidget {
  const skillUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: logIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
