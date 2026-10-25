import 'package:paths/widgets/widget_ballons.dart';
import 'package:paths/widgets/widget_secc_text.dart';
import 'package:paths/widgets/widget_pictures.dart';
import 'package:paths/widgets/widget_header.dart';
import 'package:paths/widgets/widget_card.dart';
import 'package:paths/widgets/widget_stages.dart';
import 'package:paths/widgets/widget_text.dart';
import 'package:flutter/material.dart';

//pantalla principal
class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: .zero, 
        children: [
          WidgetHeader(),
          WidgetCard(),
          WidgetText(),
          WidgetBallons(),
          WidgetSeccText(),
          WidgetPictures(),
          WidgetStages(),
        ],
      ),
    );
  }
}
