import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Casa(),
    );
  }
}

class Casa extends StatefulWidget {
  const Casa({super.key});

  @override
  State<Casa> createState() => _CasaState();
}

class _CasaState extends State<Casa> {
  String nombre = "ale";
  var color = Colors.black;
  @override
  Widget build(BuildContext context) {
    var texto = Text(
      nombre,
      style: TextStyle(color: color),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("pruebas"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          child: texto,
          onLongPress: () {
            setState(() {
              color = Colors.redAccent;
            });
          },
          onDoubleTap: () {
            setState(() {
              color = Colors.greenAccent;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          color = Colors.black;
        });
      }),
    );
  }
}

Widget btn_propiedades(funcion, String txt) {
  return OutlinedButton(onPressed: funcion,style: ButtonStyle(shape: RoundedRectangleBorder(borderRadius: )), child: Text(txt),);
}
