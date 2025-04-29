import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/core/text_styles.dart';

class homeuser extends StatefulWidget {
  const homeuser({super.key});

  @override
  State<homeuser> createState() => _homeuserState();
}

class _homeuserState extends State<homeuser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("Hola mundo", style: TextStyles.titleText)
        ]
      ),
    );
  }
}