import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/models/ballons.dart';
import 'package:paths/styles/app_styles.dart';

/// Implementación del formato de globos, en formato bucle,
/// con la posibilidad de añadir un globo nuevo con características
/// especificas de la caminata.
class WidgetBallons extends StatelessWidget {
  const WidgetBallons({super.key});

  @override
  Widget build(BuildContext context) {
    /// Número total de globos
    final int total = Images.ballons.length;

    return Padding(
      padding: AppStyles.symmPadd168,
      child: Wrap(
        alignment: .start,
        runSpacing: 8.0,
        children: _buildContainer(total),
      ),
    ); // genera el margen entre las paredes left, right, top y bottom del contenedor Wrap
  }

  /// constructor de los contenedores de los globos individuales.
  List<Widget> _buildContainer(int total) {

    /// Para facilitar la escritura se almacenan el arreglo de 
    /// los globos en una lista local del mismo tipo.
    final List<Ballons> ballons = Images.ballons;
    if (total <= 0) return []; // Si total es menor o igual que cero se retorna un arreglo vacío.

    final newContainer = Container(
      padding: AppStyles.symmPadd168,
      decoration: AppStyles.lightGreenBox,
      child: Row(
        mainAxisSize: .min,
        children: [
          ballons[5 - total].myIcon, // Dibuja el ícono correspondiente al número del elemento.

          AppStyles.smallSeparator, // Separador simple
          
          Text(ballons[5 - total].title, style: AppStyles.textPilGreen), // Escribe el texto según el número de elemento.
        ],
      ),
    );//icono + texto del globo

    final currentList = <Widget>[newContainer];
    if (total > 1) {
      currentList.add(AppStyles.smallSeparator); 
    } // añade espacio lateral por globo a partir del segundo elemento

    return currentList + _buildContainer(total - 1); // suma el contenido original o inicial del contenedor al valor encontrado actual.
  }
}