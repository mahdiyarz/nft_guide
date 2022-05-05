import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() => runApp(
      Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          home: const Home(),
        ),
      ),
    );
