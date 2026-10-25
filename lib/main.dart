import 'package:flutter/material.dart';
import 'package:paths/widgets/widget_layout.dart';

void main() {
  runApp(const PathsApp());
}

class PathsApp extends StatelessWidget {
  const PathsApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Paths App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lexend',
        useMaterial3: true, 
      ),
      // pantalla principal
      home: const WidgetLayout(), 
    );
  }
}
