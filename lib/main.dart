import 'package:flutter/material.dart';
import 'package:paths/widgets/widget_layout.dart';

void main() {
  runApp(const PathsApp());
}

/// Widget principal de al app contiene la configuración de 
/// texto global
class PathsApp extends StatelessWidget {
  const PathsApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Paths App',
      debugShowCheckedModeBanner: false, // elimina la franja diagonal de debug
      theme: ThemeData(
        fontFamily: 'Lexend',
        useMaterial3: true, 
      ),
      // pantalla principal
      home: const WidgetLayout(), // Widget de contenido de todos los segmentos de la pantalla inicial
    );
  }
}
