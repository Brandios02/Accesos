import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';
import 'package:flutter_estanciasapp/screens/_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.backg,
        appBar: AppBar(
          title: Text("Seguridad Estancias", style: TextStyle(color: Colors.white),),
          backgroundColor: AppColors.basic,
          
        ),
        body: home() 
      ),
    );
  }
  
}
