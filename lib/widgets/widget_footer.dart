import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

/// Widget que contiene todos los elementos de la 
/// barra fija del footer.
class WidgetFooter extends StatelessWidget {
  const WidgetFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Wrap(
            children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      Texts.footerSubTitle,
                      style: AppStyles.textPilGrey,
                    ),
                    Text(
                      Texts.footerTitle,
                      style: AppStyles.textBold,
                    ),
                  ],
                ),
            ],
        ), // Contenedor de los textos
        Wrap(
          children: [
            IconButton(
              onPressed: () {},
              icon: Images.download,
              style: AppStyles.buttDownload
            ), // botón de descargar
    
            AppStyles.smallSeparator, // separador
    
            FilledButton(
              onPressed: () {},
              style: AppStyles.buttStart,
              child: Row(
                children: [
                  Images.navigation,
                  AppStyles.smallSeparator,
                  Text(
                    Texts.footerButton,
                    style: AppStyles.textBold,
                  ),
                ],
              ),
            )// botón de comenzar
          ],
        ), // Contenedor de los botones
      ],
    );
  }
}