import 'package:flutter/material.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetTop extends StatefulWidget {
  const WidgetTop({super.key});

  @override
  State<WidgetTop> createState() => _WidgetTopState();
}

class _WidgetTopState extends State<WidgetTop> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Images.arrBack,
          style: AppStyles.buttCircle,
        ), 
        Row(
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Images.share,
              style: AppStyles.buttCircle,
            ),         
            IconButton(
              onPressed: (){
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              }, 
              icon: _isFavorite ? Images.favorite : Images.favoriteBorder,
              style: AppStyles.buttCircle,
            ), 
          ],
        )
      ],
    );
  }
}