import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() => runApp(
      const Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          home: Home(),
        ),
      ),
    );
