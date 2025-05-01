import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';
import 'package:flutter_estanciasapp/core/text_styles.dart';

class homeuser extends StatefulWidget {
  const homeuser({super.key});
  
  @override
  State<homeuser> createState() => _homeuserState();
  
}

class _homeuserState extends State<homeuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backg,
      body: Column(children: [
        Text("data")
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, 
      backgroundColor: AppColors.backg,
      child: Icon(Icons.settings, color: AppColors.primary,)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}