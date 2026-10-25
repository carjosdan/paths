import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetPictures extends StatelessWidget {
  const WidgetPictures({super.key});


  @override
  Widget build(BuildContext context) {
    final int total = Images.galery.length;
    
    return Padding(
      padding: AppStyles.symmPadd168,
      child: Column(
        children: [
          SizedBox(
            width: .infinity,
            height: 60.0,
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                
                Text(
                  Texts.phoTitle,
                  style: AppStyles.sectTitle,
                ), // Titulo de fotos
                Text(
                  Texts.phoSubTitle,
                  style: AppStyles.textBoldGreen,
                ), // Subtitulo derecho
              ],
            ), // Contiene la fila de los dos textos
          ), // expande la Row al margen máximo de la Columna principal
          SizedBox(
            width: .infinity,
            child: Wrap(
              alignment: .spaceBetween,
              runSpacing: 8.0,
              children:_buildContainer(total),
            ), // Distribuye todos los elementos del contenedor espaciados verticalmente 8.0
          ), // Expande el Wrap al margen máximo interno de la Columna principal
        ],
      ),
    ); // genera el padding del marco más exterior de los dibujos
  }

  List<Widget> _buildContainer(int total){
    return [
      for (int index = 0; index < total; index++)
        Stack(
          children: [
            ClipRRect(
              borderRadius: .circular(16.0),
              //child: Images.pictures[index],
              child: Images.galery[index].picture,
            ),
            //Positioned.fill(
            //  child: Text('$index', style: AppStyles.textBold,), 
            //), // prueba de indice
            if(Images.galery[index].isLastPicture)...[
              Positioned.fill(
                child: Container( decoration: AppStyles.shadowBox,),
              ), // Sombra de última posición
              Positioned(
                left: 35,
                top: 45,
                child: Text('+22', style: AppStyles.bigTitle,)
              ), // numeración de última posición
            ],
          ],
        )
    ];
  }
}