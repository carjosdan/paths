import 'package:paths/data/texts.dart';
import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

/// Widget correspondiente a la cabecera del layer
/// principal, imagen inicial, titulo y likes
class WidgetHeader extends StatelessWidget {
  const WidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .infinity,
      height: 320, // ajuste de altura vertical
      child: Stack(
        children: [
          // imagen de fondo.
          Positioned.fill( child: Images.header),
          
          // Capa de gradiente oscuro inferior
          Positioned.fill(
            child: Container(
              decoration: AppStyles.gradientBox,
            ),
          ),

          // Contenedor alineado abajo
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Globo Naranja
                Container(
                  padding: AppStyles.symmPadd168,
                  decoration: AppStyles.orangeBox,
                  child: Text(
                    Texts.pirineos,
                    style: AppStyles.textPil,
                  ),
                ),

                AppStyles.smallSeparator,// separador

                // Título de la cabecera
                Text(
                  Texts.ppalTitle,
                  style: AppStyles.bigTitle,
                  softWrap: true,
                ),

                AppStyles.smallSeparator,

                // Fila de puntuación
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Images.star, //estrella

                    AppStyles.tinySeparator, 

                    Text(
                      Texts.number,
                      style: AppStyles.textCard,
                    ),// puntuación

                    AppStyles.tinySeparator,
                    Text(
                      Texts.opinions,
                      style: AppStyles.textBody,
                    ),//número de opiniones
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}