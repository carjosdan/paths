# Paths

Aplicación Flutter que muestra el detalle de una ruta de montaña. La pantalla presenta información general del recorrido, sus características, fotografías y las etapas del trayecto.

## Contenido de la pantalla

- Cabecera con fotografía, ubicación, nombre de la ruta y valoración.
- Tarjeta con distancia, desnivel, duración y dificultad.
- Descripción de la ruta y etiquetas con características del recorrido.
- Galería de fotografías, con un indicador de imágenes adicionales.
- Lista de etapas con sus puntos, distancias, altitudes y tiempos estimados.
- Barra superior con controles de volver, compartir y marcar como favorito.
- Barra inferior con el punto de partida y controles para descargar o comenzar la ruta.

El contenido corresponde a una ruta de ejemplo por los Pirineos y está definido localmente en el código. El botón de favorito cambia su apariencia durante la sesión; los controles de volver, compartir, descargar y comenzar todavía no tienen acciones conectadas. Tampoco hay navegación entre pantallas, almacenamiento persistente ni conexión con un servicio externo.

## Estructura

```text
lib/
├── main.dart                     # Punto de entrada y configuración de MaterialApp
├── data/
│   └── texts.dart                # Textos, métricas y etapas de ejemplo
├── models/
│   ├── ballons.dart              # Modelo de etiqueta con icono
│   ├── picture.dart              # Modelo de imagen para la galería
│   └── waypoint.dart             # Modelo de etapa o punto de la ruta
├── screens/
│   └── trail_detail_screen.dart  # Contenido desplazable del detalle
├── styles/
│   ├── app_styles.dart           # Colores, tipografía, separadores y estilos
│   └── images.dart               # Iconos, imágenes y listas de etiquetas/fotos
└── widgets/
    ├── widget_ballons.dart       # Etiquetas de características
    ├── widget_card.dart          # Resumen de métricas
    ├── widget_footer.dart        # Barra inferior fija
    ├── widget_header.dart        # Imagen, título y valoración
    ├── widget_layout.dart        # Estructura general y barras fijas
    ├── widget_pictures.dart      # Galería de fotografías
    ├── widget_stages.dart        # Lista de etapas
    ├── widget_text.dart          # Descripción de la ruta
    └── widget_top.dart           # Barra superior y estado de favorito
```

## Recursos visuales

Las imágenes se encuentran en `assets/images/` y se declaran como recursos de Flutter en `pubspec.yaml`:

- `header.jpg`: imagen de cabecera.
- `forest.jpg`, `lake.jpg`, `meadow.jpg`, `peaks.jpg`, `sunset.jpg` y `waterfall.jpg`: fotografías de la galería.

La interfaz utiliza Material 3, la familia tipográfica `Lexend` y los iconos de Material Symbols. El paquete `material_symbols_icons` está declarado en las dependencias del proyecto.

## Requisitos y ejecución

Se requiere Flutter con una versión de Dart compatible con la restricción `^3.13.5` definida en `pubspec.yaml`, además de un emulador o dispositivo configurado.

Desde la raíz del proyecto:

```bash
flutter pub get
flutter run
```

## Personalización

- Edita los textos, métricas y puntos de la ruta en `lib/data/texts.dart`.
- Actualiza iconos, etiquetas y fotografías en `lib/styles/images.dart`; coloca las nuevas imágenes en `assets/images/`.
- Ajusta colores, tipografía, espaciados y decoraciones en `lib/styles/app_styles.dart`.
- Modifica la composición de la pantalla en `lib/screens/` y `lib/widgets/`.
