import 'package:paths/models/waypoint.dart';

class Texts {
  // header
  static final number = '4.8';
  static final pirineos = 'PIRINEOS · VAL D\'ARAN';
  static final opinions = '(126 opinions)';
  static final ppalTitle = 'Circuito de Estanques de los Palomares';
  
  // section card
  static final numDistance = '9,4 km';
  static final distance = 'Distancia';
  static final numHeight = '620 m';
  static final height = 'Desnivel';
  static final numTime = '3 h 45';
  static final time = 'Duración';
  static final valDifficulty = 'Moderada';
  static final difficulty = 'Dificultad'; 

  // section text
  static final sectTitle = 'Sobre la ruta';
  static final redaction = 'Una vuelta circular por el corazón del circo de Colomers, con una decena de estanques de origen glacial. El camino está bien señalizado y la subida es constante pero sin tramos técnicos. Ideal para finales de primavera y verano.';
  
  // section photos
  static final phoTitle = 'Fotos';
  static final phoSubTitle = 'Verlas todas';
  
  //section stages
  static final stagesTitle = 'Etapas';

  static final List<Waypoint> waypoint = [
    Waypoint(number: 1, title: 'Baños de Trozos', subtitle: 'Salida · 1.750 m', time: '0:00'),
    Waypoint(number: 2, title: 'Refugio de Palomas', subtitle: '3,1 km · 2.135 m', time: '1:10'),
    Waypoint(number: 3, title: 'Estanque Mayor', subtitle: '4,6 km · 2.180 m', time: '1:45'),
    Waypoint(number: 4, title: 'Estanque Obago', subtitle: '6,2 km · 2.240 m', time: '2:30'),
    Waypoint(number: 5, title: 'Vuelta a los Baños', subtitle: '9,4 km · 1.750 m', time: '3:45', isLast: true),
  ];

  // section footer
  static final navTitle = 'Baños de Trozos';
  static final navSubTitle = 'Punto de partida'; 
}