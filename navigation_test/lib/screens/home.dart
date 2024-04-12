import 'package:flutter/material.dart';
import 'package:navigation_test/screens/second_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        backgroundColor: Colors.deepOrange,
      ),
      body: _body(context),
    );
  }
}

Center _body(context) {
  return Center(
      child: OutlinedButton(
    onPressed: () {
      final route = MaterialPageRoute(builder: (BuildContext context) {
        return SecondPage(
          name: "hola",
        );
      });
      Navigator.of(context).push(route);
    },
    child: Text("iniciar"),
    style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.deepOrangeAccent)),
  ));
}
