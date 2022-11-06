import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final double width;
  const MyBackButton({required this.width});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Positioned(
        left: width / 90,
        top: width / 90,
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_forward_rounded),
            color: Color.fromARGB(255, 115, 102, 68),
            iconSize: 20,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }
}
