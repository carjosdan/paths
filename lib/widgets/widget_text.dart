import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/app_styles.dart';

/// Widget que contiene la sección del texto explicativo
class WidgetText extends StatelessWidget {
  const WidgetText({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: AppStyles.symmPadd168,
      child: Column(
        crossAxisAlignment: .start,
        children: [

          Text(
            Texts.sectTitle,
            style: AppStyles.sectTitle,
          ), // Titulo de la sección
          
          AppStyles.smallSeparator, //separador
          
          Text(
            Texts.redaction,
            style: AppStyles.textBody,
          ), // Contenido total del párrafo.
        ],
      ),
    );
  }
}