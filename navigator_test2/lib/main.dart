import 'package:flutter/material.dart';
import 'package:navigator_test2/screens/home.dart';
import 'package:navigator_test2/screens/second.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => Home(),
        "/second": (BuildContext context) => Second()
      },
    );
  }
}
