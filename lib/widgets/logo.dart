import 'package:flutter/material.dart';

class ParsStringLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white70,
      radius: 55,
      child: Image.asset(
        'assets/logo/pars_string.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
