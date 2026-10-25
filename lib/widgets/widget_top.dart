import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

/// Barra de botones fija superior, con botón de 
/// de retornar, compartir y favorito.
class WidgetTop extends StatefulWidget {
  const WidgetTop({super.key});

  @override
  State<WidgetTop> createState() => _WidgetTopState();
}

class _WidgetTopState extends State<WidgetTop> {
  bool _isFavorite = false; // inicialización del estado de favorito

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Images.arrBack,
          style: AppStyles.buttCircle,
        ), // botón de retornar

        Row(
          children: [
            
            IconButton(
              onPressed: (){}, 
              icon: Images.share,
              style: AppStyles.buttCircle,
            ), // botón de compartir

            IconButton(
              onPressed: (){
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              }, 
              icon: _isFavorite ? Images.favorite : Images.favoriteBorder,
              style: AppStyles.buttCircle,
            ), // botón de favorito
          ],
        )
      ],
    );
  }
}