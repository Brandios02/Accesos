import 'package:flutter/material.dart';
import 'package:flutter_estanciasapp/components/barcustom.dart';
import 'package:flutter_estanciasapp/core/app_Colors.dart';

class RegistVisit extends StatelessWidget {
  const RegistVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Barcustom(title: "Registrar visita"),
      backgroundColor: AppColors.backg,
      body: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(120)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
          "assets/images/principal.png",
          ),
          const SizedBox(height: 30),

          Container(
          width: 250,
          margin: const EdgeInsets.symmetric(horizontal: 20), 
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Tipo de visita',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            items: const [
              DropdownMenuItem(
                value: 'frecuente',
                child: Text('Frecuente'),
              ),
              DropdownMenuItem(
                value: 'unica',
                child: Text('Única vez'),
              ),
            ],
            onChanged: null,
          ),
        ),

        const SizedBox(height: 50),
        Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 400,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Nombre del visitante',
              hintText: 'Ej. Juan Pérez',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    ),
    const SizedBox(height: 50),

    Center( 
          child: SizedBox( 
            width: 250.0 , // Ancho del botón
             height: 50.0 , // Alto del botón
             child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.btntxt),
            onPressed: () {},
            child: Text("Generar QR")),
          )),


        ]
      ),

    ),

    );
    
    
  }
}