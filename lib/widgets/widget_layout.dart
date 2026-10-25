import 'package:flutter/material.dart';
import 'package:paths/styles/app_styles.dart';
import 'package:paths/widgets/widget_footer.dart';
import 'package:paths/screens/trail_detail_screen.dart';
import 'package:paths/widgets/widget_top.dart';

// widget que muestra los tres grandes bloques
// top content bottom
class WidgetLayout extends StatelessWidget {
  const WidgetLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,  // Por defecto es false, lo que hace un menú fijo superior solido.
                                      // En true provoca la transparencial del fondo del menú.

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: AppStyles.symmPadd168,
            child: WidgetTop(), // menú flotante sobre el contenido
          ),
        ),
      ), // Barra fija superior.

      body: const TrailDetailScreen(),

      bottomNavigationBar: SafeArea(
        top: false, 
        child: Padding(
          padding: AppStyles.symmPadd168,
          child: const WidgetFooter(),
        ),
      ),
    );
  }
}