import 'package:flutter/material.dart';
import 'package:paths/data/texts.dart';
import 'package:paths/styles/images.dart';
import 'package:paths/styles/app_styles.dart';

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
                      Texts.navSubTitle,
                      style: AppStyles.textPilGrey,
                    ),
                    Text(
                      Texts.navTitle,
                      style: AppStyles.textBold,
                    ),
                  ],
                ),
            ],
        ),
        Wrap(
          children: [
            IconButton(
              onPressed: () {},
              icon: Images.download,
              style: AppStyles.buttDownload
            ),
    
            AppStyles.smallSeparator,
    
            FilledButton(
              onPressed: () {},
              style: AppStyles.buttStart,
              child: Row(
                children: [
                  Images.navigation,
                  AppStyles.smallSeparator,
                  Text(
                    'Comenzar',
                    style: AppStyles.textBold,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}