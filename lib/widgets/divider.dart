import 'package:flutter/material.dart';

Widget DividerNew(
    BuildContext context, String title, String icon, bool center) {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(73, 0, 0, 0),
        borderRadius: BorderRadius.circular(20)),
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
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(icon), opacity: .4)),
          ),
        if (center == false)
          SizedBox(
            width: 5,
          )
      ],
    ),
  );
}
