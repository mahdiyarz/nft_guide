import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/article-ch7.jpeg',
  'images/un1.png',
  'images/un2.png',
];
final List<String> textList = [
  ' هشسیش شیش شسی',
  'سییبی شیص الا ث',
  'یبس سعناسببس س',
];

Widget CarouselCard(int pagePosition, int activePage) {
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
              imgList[pagePosition],
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
                      textList[pagePosition],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ))
          ],
        )),
  );
}
