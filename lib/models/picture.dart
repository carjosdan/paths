import 'package:flutter/material.dart';

class Picture {
  final Image picture;
  final bool isLastPicture;

  const Picture({
    required this.picture,
    this.isLastPicture = false,
  });
}