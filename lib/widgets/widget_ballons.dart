import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/models/ballons.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetBallons extends StatelessWidget {
  const WidgetBallons({super.key});

  @override
  Widget build(BuildContext context) {

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

  List<Widget> _buildContainer(int total) {
    final List<Ballons> ballons = Images.ballons;
    if (total <= 0) return [];

    final newContainer = Container(
      padding: AppStyles.symmPadd168,
      decoration: AppStyles.lightGreenBox,
      child: Row(
        mainAxisSize: .min,
        children: [
          ballons[5 - total].myIcon,

          AppStyles.smallSeparator,
          
          Text(ballons[5 - total].title, style: AppStyles.textPilGreen),
        ],
      ),
    );//icono + texto del globo

    final currentList = <Widget>[newContainer];
    if (total > 1) {
      currentList.add(AppStyles.smallSeparator); 
    } // añade espacio lateral por globo

    return currentList + _buildContainer(total - 1);
  }
}