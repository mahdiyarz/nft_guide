import 'package:flutter/material.dart';

class ParsStringSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Designed & Developed by Pars String Group',
          style: TextStyle(
            color: Colors.white54,
            fontSize: 10,
          ),
        ),
        Text(
          'pars.string@gmail.com',
          style: TextStyle(
            color: Colors.white54,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
