import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';
import 'package:flutter_estanciasapp/core/text_styles.dart';
import 'package:flutter_estanciasapp/screens/_homeuser.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: Column(
        children: [
          Image.asset("assets/images/principal.png"),
          const SizedBox(height: 20),

          Text("Bienvenido", style: TextStyles.titleText),
          const SizedBox(height: 10),
          
          TextField(
          decoration: InputDecoration(
          labelText: 'User',
          hintText: 'Introduce tu usuario',
          border: OutlineInputBorder()
            )
          ),
          const SizedBox(height: 10),

          TextField(
            obscureText: true,
            textInputAction: TextInputAction.continueAction, 
            decoration: InputDecoration(
            labelText: "Contraseña",
            hintText: "Introduce tu contraseña",
            border: OutlineInputBorder(),
          ),
          ),
          const SizedBox(height: 10),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.text),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => homeuser()));},
            child: Text("Iniciar sesion"))

        ],
      ),
    );
  }
}