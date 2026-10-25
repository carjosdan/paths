import 'package:material_symbols_icons/symbols.dart';
import 'package:paths/models/ballons.dart';
import 'package:paths/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Images {
  // iconos 
  static final Icon star = Icon(
    Icons.star,
    color: AppStyles.orange,
    size: 17.0,
  );

  // buttons NavBarTop o appBar 
  static final Icon arrBack = Icon(
    Icons.arrow_back,
    color: Colors.black,
  );

  static final Icon share = Icon(
    Icons.ios_share,
    size: 20,
    color: Colors.black,
  );

  static final Icon favoriteBorder = Icon(
    Icons.favorite_border,
    size: 20,
    color: Colors.black,
  );
  
  static final Icon favorite = Icon(
    Icons.favorite,
    size: 20,
    color: Colors.redAccent,
  );


  static final Icon navigation = Icon(
    Icons.navigation,
    size: 20,
    color: Colors.white,
  
  );

  static final Icon download = Icon(
    Icons.download,
    size: 24,
    color: Colors.black,
  );

  static final Transform convPath = Transform.rotate(
    angle: 90 * math.pi / 180,
    child: Icon(
      Symbols.conversion_path,
      size: 20,
      weight: 700, 
      color: AppStyles.green,
    ),
  );

  static final Icon trendUp = Icon(
    Symbols.trending_up,
    size: 20,
    weight: 700, 
    color: AppStyles.green,
  );
  
  static final Icon schedule = Icon(
    Symbols.schedule,
    size: 20,
    weight: 700, 
    color: AppStyles.green,
  );

  static final Icon landscape = Icon( 
    Icons.landscape,
    size: 23,
    color: AppStyles.orange,

  );

  // ballons
  static final Icon arrCirc = Icon(
    Icons.sync,
    size: 17,
    color: AppStyles.green,
  ); 

  static final Icon water = Icon(
    Icons.water,
    size: 17,
    color: AppStyles.green,
  );

  static final Icon pet = Icon(
    Icons.pets,
    size: 17,
    color: AppStyles.green,
  );

  static final Icon waterDrop = Icon(
    Icons.water_drop,
    size: 17,
    color: AppStyles.green,
  );

  static final Icon houseSid = Icon(
    Icons.house_siding,
    size: 17,
    color: AppStyles.green,
  );

  
  static final List<Ballons> ballons = [
    Ballons(title: 'Circular', myIcon: arrCirc),
    Ballons(title: 'Refugio', myIcon: houseSid),
    Ballons(title: 'Estanques', myIcon: water),
    Ballons(title: 'Fuente de agua', myIcon: waterDrop),
    Ballons(title: 'Perros permitidos', myIcon: pet),
  ];

  // imágenes
  static final Image header = Image.asset('assets/images/header.jpg', height: 320, width: .infinity, fit: .cover,);
  static final Image forest = Image.asset('assets/images/forest.jpg', height: 120, width: 120, fit: .cover, );
  static final Image lake = Image.asset('assets/images/lake.jpg', height: 120, width: 120, fit: .cover,);
  static final Image meadow = Image.asset('assets/images/meadow.jpg', height: 120, width: 120, fit: .cover,);
  static final Image peaks = Image.asset('assets/images/peaks.jpg', height: 120, width: 120, fit: .cover,);
  static final Image sunset = Image.asset('assets/images/sunset.jpg', height: 120, width: 120, fit: .cover,);
  static final Image waterfall = Image.asset('assets/images/waterfall.jpg', height: 120, width: 120, fit: .cover,);

  static final List<Image> pictures = [
    forest, 
    lake, 
    meadow,
    peaks,
    sunset,
    waterfall
  ];
}
