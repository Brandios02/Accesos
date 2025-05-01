import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/components/imagesselector.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';
import 'package:flutter_estanciasapp/components/barcustom.dart';
import 'package:flutter_estanciasapp/core/text_styles.dart';


class HomeUser extends StatefulWidget {
  const HomeUser({super.key});
  
  @override
  State<HomeUser> createState() => _HomeUserState();
  
}

class _HomeUserState extends State<HomeUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Barcustom(title: "Bienvenido, User"),
      backgroundColor: AppColors.backg,
      body: Column(children: [
        Text("¿Que deseas relizar?", style: TextStyles.titleText),
          const SizedBox(height: 20),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImgSelec(
            imagePath: "assets/images/RegistrarVisita.png",
            label: "Registrar Visita",
            onPressed: () {},
            ), 
          ImgSelec(
            imagePath: "assets/images/EliminarVisita.png",
            label: "Eliminar Visita",
            onPressed: () {},
              )
            ]
          ),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImgSelec(
            imagePath: "assets/images/RegistrarVisita.png",
            label: "Contactar Caseta",
            onPressed: () {},
            ), 
          ImgSelec(
            imagePath: "assets/images/EliminarVisita.png",
            label: "Registrar Evento",
            onPressed: () {},
              )
            ]
          )
        ]
      ),

      //Button Settings
      floatingActionButton: FloatingActionButton(onPressed: () {}, 
      backgroundColor: AppColors.backg,
      child: Icon(Icons.settings, color: AppColors.primary,)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}