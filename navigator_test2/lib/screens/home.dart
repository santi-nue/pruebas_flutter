import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var texto;
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Row(
          children: [
            TextFormField(
              onChanged: (value) {
                print(value);
                texto = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
