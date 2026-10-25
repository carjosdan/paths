import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/models/waypoint.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetStages extends StatelessWidget {
  const WidgetStages({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulamos los datos basados en tu imagen
    final List<Waypoint> waypoints = Texts.waypoint;

    return Padding(
      padding: AppStyles.symmPadd168,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            Texts.stagesTitle,
            style: AppStyles.sectTitle,
          ),

          AppStyles.sectionSeparator,
          
          ListView.builder(
            padding: EdgeInsets.zero, 
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // bloquea el scroll
            itemCount: waypoints.length,
            itemBuilder: (context, index) {
              final item = waypoints[index];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- COLUMNA 1: El Indicador Visual (Círculo + Línea Conectora) ---
                  Column(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: AppStyles.decBox(item),
                        alignment: Alignment.center,
                        child: Text(
                          '${item.number}',
                          style: AppStyles.numBox(item),
                        ),
                      ),
                      // Si no es el último elemento, dibuja la línea vertical conectora
                      if (!item.isLast)
                        Container(
                          width: 2,
                          height: 45, // Ajusta esta altura para separar más o menos las paradas
                          color: AppStyles.lightGreen,
                        ),
                                      ],
                  ),
                  AppStyles.mediumSeparator,
          
                  // --- COLUMNA 2: Los Textos Informativos ---
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        AppStyles.tinySeparator, // Alineación visual respecto al centro del círculo
                        Text(
                          item.title,
                          style: AppStyles.textBold,
                        ),
                        AppStyles.minSeparator,
                        Text(
                          item.subtitle,
                          style: AppStyles.textPilBold,
                        ),
                      ],
                    ),
                  ),
          
                  // --- COLUMNA 3: Tiempo ---
                  Padding(
                    padding: AppStyles.symmPadd4, 
                    child: Text(
                      item.time,
                      style: AppStyles.textBold,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
