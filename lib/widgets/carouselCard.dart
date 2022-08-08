import 'package:flutter/material.dart';

Widget CarouselCard(
    {required int pagePosition,
    required int activePage,
    required String image,
    required String text}) {
  bool active = pagePosition == activePage;
  double margin = active ? 10 : 20;
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black45,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Center(
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ))
          ],
        )),
  );
}
