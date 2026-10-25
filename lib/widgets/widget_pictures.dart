import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetPictures extends StatelessWidget {
  const WidgetPictures({super.key});


  @override
  Widget build(BuildContext context) {
    final int total = Images.pictures.length;
    
    return Padding(
      padding: AppStyles.symmPadd168,
      child: Wrap(
        alignment: .spaceBetween,
        runSpacing: 8.0,
        children:_buildContainer(total),
      ),
    );
  }

  List<Widget> _buildContainer(int total){
    if (total <= 0) return []; //asegura que total nunca es menor que cero.

    final newContainer = Stack(
      children: [
        ClipRRect(
          borderRadius: .circular(16.0),
          child: Images.pictures[total - 1],
        ),
        if (total - 1 == 0) // si el elemento es el último pinta la sombra 
          Positioned.fill(
            child: Container(
              decoration: AppStyles.shadowBox,
            ),
          ),
        if (total - 1 == 0) // si el elemento es el último pinta el número
          Positioned(
            left: 35,
            top: 45,
            child: Text(
              '+22',
            style: AppStyles.bigTitle,
          ),
          ),
      ],
    ); // crea marco con bordes redondos

    final currentList = <Widget>[newContainer];

    return currentList + _buildContainer(total - 1); // retorna la lista actual de imagenes ordenada
  }
}