import 'package:flutter/material.dart';

Widget DividerNew(
    BuildContext context, String title, IconData icon, bool center) {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(73, 0, 0, 0),
        borderRadius: BorderRadius.circular(15)),
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    width: MediaQuery.of(context).size.width,
    height: 35,
    child: Row(
      mainAxisAlignment:
          center ? MainAxisAlignment.center : MainAxisAlignment.end,
      children: [
        center
            ? Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Color.fromARGB(255, 171, 171, 171),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'Vazir'),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                    color: Color.fromARGB(255, 171, 171, 171),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'Vazir'),
              ),
        if (center == false)
          SizedBox(
            width: 7,
          ),
        if (center == false)
          Icon(
            icon,
            color: Color.fromARGB(255, 115, 102, 68),
          ),
        if (center == false)
          SizedBox(
            width: 10,
          )
      ],
    ),
  );
}
