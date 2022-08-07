import 'package:flutter/material.dart';

Widget BlocChainCard(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Card(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 13),
    child: Container(
      color: Colors.red,
      width: width / 4,
      height: width / 4,
    ),
  );
}
