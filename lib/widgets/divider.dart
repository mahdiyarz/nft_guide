import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DividerNew(BuildContext context, String title, IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(54, 0, 0, 0),
        borderRadius: BorderRadius.circular(15)),
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    width: MediaQuery.of(context).size.width,
    height: 30,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 171, 171, 171),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Icon(
          icon,
          color: Color.fromARGB(255, 115, 102, 68),
        ),
        SizedBox(
          width: 10,
        )
      ],
    ),
  );
}
