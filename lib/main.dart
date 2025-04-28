import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Seguridad Estancias"),
          backgroundColor: const Color.fromARGB(255, 180, 55, 202),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.abc)),
          ],
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
