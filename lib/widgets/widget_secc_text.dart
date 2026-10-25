import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/app_styles.dart';

class WidgetSeccText extends StatelessWidget {
  const WidgetSeccText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyles.symmPadd168,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            Texts.phoTitle,
            style: AppStyles.sectTitle,
          ),
          Text(
            Texts.phoSubTitle,
            style: AppStyles.textBoldGreen,
          ),
        ],
      ),
    );
  }
}