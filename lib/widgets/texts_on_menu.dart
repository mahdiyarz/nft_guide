import 'dart:math';

import 'package:flutter/material.dart';

class TextsOnMenu extends StatelessWidget {
  final double? vertical;
  final double? horizontal;
  final String text;
  final bool isBold;
  const TextsOnMenu({
    required this.isBold,
    required this.text,
    this.horizontal,
    this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal ?? 20,
        vertical: vertical ?? 5,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.justify,
        textScaleFactor: ScaleSize.textScaleFactor(context),
      ),
    );
  }
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 800) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
