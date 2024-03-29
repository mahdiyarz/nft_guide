import 'package:flutter/material.dart';

import '../models/nftModel.dart';
import '../screens/chapterPage.dart';

class Chapter7Card extends StatefulWidget {
  @override
  State<Chapter7Card> createState() => _Chapter7CardState();
}

class _Chapter7CardState extends State<Chapter7Card> {
  final List<int> _myChaptersId = const [
    081,
    082,
    083,
  ];
  bool isPressed = false;
  bool startCounting = false;
  // double width = MediaQuery.of(widget.contexty).size.width;
  // this is the card that shown in the first screen of the app
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double width2 = 150;
    double transform = isPressed ? width1 / 1.75 : 0;

    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: Color.fromARGB(221, 0, 0, 0),
        width: width1,
        height: isPressed ? 340 : width1 / 2,
        child: Center(
          child: InkWell(
            onTap: isPressed
                ? null
                : () {
                    setState(() {
                      isPressed = !isPressed;
                      Future.delayed(Duration(milliseconds: 600), () {
                        setState(() {
                          startCounting = true;
                        });
                      });
                    });
                  },
            child: Stack(
              fit: StackFit.expand,
              children: [
                AnimatedCrossFade(
                  duration: Duration(milliseconds: 1000),
                  secondCurve: Curves.easeIn,
                  crossFadeState: isPressed & startCounting
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  firstChild: SizedBox(),
                  secondChild: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => ChapterPage(
                                          nft: nftsData.firstWhere((element) =>
                                              element.id == _myChaptersId[0]),
                                        )),
                              ),
                              child: ListTile(
                                tileColor: Color.fromARGB(157, 32, 24, 24),
                                title: Text('مقدمه',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Vazir',
                                        color: Color.fromARGB(
                                            255, 171, 171, 171))),
                                leading: CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      Color.fromARGB(255, 142, 183, 65),
                                  child: Center(
                                    child: Text('۱',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 39, 39, 39),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => ChapterPage(
                                        nft: nftsData.firstWhere((element) =>
                                            element.id == _myChaptersId[1]),
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('روش ها',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Vazir',
                                      color:
                                          Color.fromARGB(255, 171, 171, 171))),
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 142, 183, 65),
                                child: Center(
                                  child: Text('۲',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 39, 39, 39),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => ChapterPage(
                                        nft: nftsData.firstWhere((element) =>
                                            element.id == _myChaptersId[2]),
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('نکات تکمیلی',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Vazir',
                                      color:
                                          Color.fromARGB(255, 171, 171, 171))),
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 142, 183, 65),
                                child: Center(
                                  child: Text('۳',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 39, 39, 39),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.bounceInOut,
                    transform: Matrix4.translationValues(transform, 0, 0),
                    decoration: BoxDecoration(
                      shape: isPressed ? BoxShape.circle : BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('images/7-scam2.jpg'),
                        fit: BoxFit.cover,
                        opacity: 140,
                      ),
                      color: const Color.fromARGB(255, 34, 33, 33),
                      // borderRadius: BorderRadius.circular(15),
                    ),
                    width: isPressed ? width2 : width1,
                    height: isPressed ? width2 : width1,
                    child: isPressed
                        ? InkWell(onTap: (() {
                            setState(() {
                              isPressed = false;
                              startCounting = false;
                            });
                          }))
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'فصل هفتم',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              FittedBox(
                                fit: BoxFit.fill,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    'روش های معمول کلاه برداری',
                                    textDirection: TextDirection.rtl,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
