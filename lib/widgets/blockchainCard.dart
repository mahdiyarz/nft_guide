import 'package:flutter/material.dart';

Widget BlocChainCard(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    child: Center(
        child: Text(
      'اتریوم',
      style: TextStyle(
          color: Color.fromARGB(255, 190, 189, 189),
          fontWeight: FontWeight.w600,
          fontSize: 15,
          fontFamily: 'Vazir'),
    )),
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 13),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 0, 0, 0),
        image: DecorationImage(
            image: AssetImage(
              'images/un2.png',
            ),
            fit: BoxFit.cover,
            opacity: 0.4)),
    width: width / 4,
    height: width / 4,
  );
}
