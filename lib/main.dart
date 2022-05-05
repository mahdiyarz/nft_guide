import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() => runApp(
      Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          home: const Home(),
          theme: ThemeData(
            canvasColor: const Color.fromARGB(255, 229, 227, 201),
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: const Color.fromARGB(255, 180, 207, 176),
              onPrimary: const Color.fromARGB(255, 0, 0, 0),
              secondary: const Color.fromARGB(255, 148, 180, 159),
              onSecondary: const Color.fromARGB(255, 255, 255, 255),
              error: const Color.fromARGB(255, 164, 74, 63),
              onError: const Color.fromARGB(255, 255, 255, 255),
              primaryContainer: const Color.fromARGB(255, 120, 147, 149),
            ),
          ),
        ),
      ),
    );
