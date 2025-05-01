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
          Image.asset(
                "assets/images/principal.png",

              ),
          const SizedBox(height: 30),

          Text("Bienvenido", style: TextStyles.titleText),
          const SizedBox(height: 20),
          
          Center(child: SizedBox(
              width: 400,
              height: 80,
              child:TextField(
                decoration: InputDecoration(
                  labelText: 'User',
                  hintText: 'Introduce tu user',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                  )
                )
             ),
            ),
          ),
          
          const SizedBox(height: 5),

          Center(
            child: SizedBox(
              width: 400,
              height: 80,
              child: TextField(
              obscureText: true,
              textInputAction: TextInputAction.continueAction, 
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Introduce tu password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          Center( 
          child: SizedBox( 
            width: 250.0 , // Ancho del botón
             height: 50.0 , // Alto del botón
             child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.text),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => homeuser()));},
            child: Text("Iniciar sesion")),
          )),
          
          const SizedBox(height: 5),
          TextButton(onPressed: null, child: Text("Registrarse"))

        ],
      ),
    );
  }
}