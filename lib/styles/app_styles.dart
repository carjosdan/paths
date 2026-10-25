import 'package:flutter/material.dart';
import 'package:paths/models/waypoint.dart';
class AppStyles {
  
  // Paleta de colores
  static final Color green = Color(0xFF2E7D5B);
  static final Color lightGreen = Color(0xFFE3F1EA);
  static final Color orange = Color(0xFFF2994A);
  static final Color darkText = Color(0xFF1F2A2E);
  static final Color greyText = Color(0xFF6B7A80);
  static final Color background = Color(0xFFF6F8F7);

  // Rellenos
  // extra grande
  static final EdgeInsets symmPadd168 = EdgeInsets.symmetric(
    horizontal: 16.0, 
    vertical: 8.0
  );
  // extra grande lateral
  static final EdgeInsets symmPadd160 = EdgeInsets.symmetric(
    horizontal: 16.0, 
    vertical: 0.0
  );
  // pequeño
  static final EdgeInsets symmPadd4 = EdgeInsets.symmetric(
    horizontal: 4.0, 
    vertical: 4.0
  );
  
  // separadores
  static final Widget minSeparator = SizedBox(width: 2, height: 2);
  static final Widget tinySeparator = SizedBox(width: 4, height: 4);
  static final Widget smallSeparator = SizedBox(width: 8, height: 8);
  static final Widget mediumSeparator = SizedBox(width: 16, height: 16);
  static final Widget sectionSeparator = SizedBox(width: 24, height: 24,);

  // Configuración de textos por tamaños
  // Grandes
  static final TextStyle bigTitle = TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white);
  static final TextStyle sectTitle = TextStyle(fontSize: 19, fontWeight: FontWeight.bold);
  // Medio
  static final TextStyle textBold = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static final TextStyle textBoldGreen = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: green);
  static final TextStyle textBody = TextStyle(fontSize: 15, color: const Color(0xFF6B7A80), wordSpacing: 1.5);
  static final TextStyle textCard = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static final TextStyle textPilGreen = TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: green);
  static final TextStyle textPilGrey = TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF6B7A80));
  // Pequeño
  static final TextStyle textPilBold = TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey);
  static final TextStyle textPil = TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white);
  
  // buttons NavBarTop o appBar 
  static final buttCircle = IconButton.styleFrom(
    backgroundColor: Colors.white,
  );

  // Estilos de appBar, footerBar o barra fija inferior
  // estilo de botón de descarga
  static final buttDownload = IconButton.styleFrom(
    minimumSize: Size(48, 48),
    fixedSize: Size(48, 38),
    side: BorderSide(
      color: Color(0x42000000),
      width: 1.5,
    ),
    foregroundColor: Colors.white, 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
  // estilo de botón de comenzar
  static final buttStart = FilledButton.styleFrom(
    backgroundColor: AppStyles.green,
    padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 11),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), 
    ),
  );
  
  // Estilos de Cabecera 
  // gradiente 
  static final Gradient gradient = LinearGradient(
    begin: .topCenter,
    end: .bottomCenter,
    colors: [
      Colors.transparent,
      Colors.black38,
      Colors.black54,
    ],
    stops: const [0.4, 0.65, 1.0],
  );  
  // estilos para caja de gradiente
  static final BoxDecoration gradientBox = BoxDecoration(
    gradient: AppStyles.gradient,
  );

  // estilos para globo naranja
  static final BoxDecoration orangeBox = BoxDecoration(
    color: orange, 
    borderRadius: BorderRadius.circular(12.0), 
  );

  // Estilos Card
  // divisor vertical color gris claro
  static final VerticalDivider confCardDivider = VerticalDivider(
    color: Colors.black12,
    thickness: 1,
    indent: 8,
    endIndent: 8,
  );

  // Estilos globos color verde
  // configuración de borde circular de los globos y color
  static final BoxDecoration lightGreenBox = BoxDecoration(
    color: lightGreen,
    borderRadius: BorderRadius.circular(12.0),
  );

  // Estilos de galería de fotos
  // caja con sombra púrpura para última imagen de la galería
  static final BoxDecoration shadowBox = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
      const Color(0xFF23192B).withAlpha(217), // Púrpura oscuro 
      const Color(0xFF452C27).withAlpha(191), // Sombra negra en la base
      ],
    ),
    );
  

  // Estilos de Etapas 
  // Estilo para caja circular contenedora
  static BoxDecoration decBox(Waypoint item) { 
    return BoxDecoration(
      color: item.isLast ? green : lightGreen,
      shape: BoxShape.circle,
    );
  }
  // Estilo para contraste de numeración en caja contenedora circular
  static TextStyle numBox(Waypoint item) {
    return TextStyle(
      color: item.isLast ? Colors.white : green,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
  }
  
}