import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';

class ImgSelec extends StatefulWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed;
  
  const ImgSelec({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
    });
  

  @override
  State<ImgSelec> createState() => _ImgSelecState();
}

class _ImgSelecState extends State<ImgSelec> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            IconButton(
            onPressed: widget.onPressed,
            icon: Container(
            height: 125,
            width: 450, // ajusta a lo que necesites
            decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(55),
            ),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Image.asset(
          widget.imagePath,
          
      ),
    ),
  ),
),
            Text(
              widget.label,
              style: const TextStyle(fontSize: 16, color: AppColors.text),
          ),
          ],
        ),
      ]
    );
  }
}