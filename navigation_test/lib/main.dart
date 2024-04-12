import 'package:flutter/material.dart';
import 'package:navigation_test/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: const Center(
          child: Home(),
        ),
      ),
    );
  }
}
