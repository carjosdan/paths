import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

//
class WidgetCard extends StatelessWidget {
  const WidgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyles.symmPadd168,
      child: Card(
        margin: .zero,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: .antiAlias,
        child: Padding(
          padding: AppStyles.symmPadd168, 
          child: SizedBox(
            height: 75, // Altura mínima necesaria interna de la tarjeta para poder visualizar los separadores verticales.
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                Column(
                  children: [
                    Images.convPath,

                    AppStyles.tinySeparator, // separador interno
                    
                    Text(
                      Texts.numDistance,
                      style: AppStyles.textBold,
                    ),
                    Text(
                      Texts.distance,
                      style: AppStyles.textPilBold,
                    ),
                  ],
                ), // Primer elemento de la tarjeta
                
                AppStyles.confCardDivider, // División vertical de la tarjeta
                
                Column(
                  children: [
                      Images.trendUp,
                      AppStyles.tinySeparator,
                      Text(
                        Texts.numHeight,
                        style: AppStyles.textBold,
                      ),
                      Text(
                        Texts.height,
                        style: AppStyles.textPilBold,
                      ),
                  ], 
                ),// Segundo elemento de la tarjeta
                
                AppStyles.confCardDivider,
                
                Column(
                  children: [
                      Images.schedule,
                      AppStyles.tinySeparator,
                      Text(
                        Texts.numTime,
                        style: AppStyles.textBold,
                      ),
                      Text(
                        Texts.time,
                        style: AppStyles.textPilBold,
                      ),
                  ], 
                ), // Tercer elemento de la tarjeta

                AppStyles.confCardDivider,
                
                Column(
                  children: [
                      Images.landscape,
                      AppStyles.tinySeparator,
                      Text(
                        Texts.valDifficulty,
                         style: AppStyles.textBold,
                      ),
                      Text(
                        Texts.difficulty,
                        style: AppStyles.textPilBold,  
                      ),
                  ], 
                ), // Último elemento de la tarjeta
              ],
            ),
          ),
        ),
      ),
    );
  }
}