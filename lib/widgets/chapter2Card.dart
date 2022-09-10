import 'package:flutter/material.dart';

import '../models/nftModel.dart';
import '../screens/chapterPage.dart';

class Chapter2Card extends StatefulWidget {
  @override
  State<Chapter2Card> createState() => _Chapter3CardState();
}

class _Chapter3CardState extends State<Chapter2Card> {
  bool isPressed = false;
  // double width = MediaQuery.of(widget.contexty).size.width;
  // this is the card that shown in the first screen of the app
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double width2 = 150;
    double transform = isPressed ? width1 / 2 : 0;

    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: Container(
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
                    });
                  },
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (isPressed == true)
                  Center(
                    child: Column(
                      children: [
                        /*  InkWell(
                          onTap: () {
                            isPressed = false;
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.close, color: Colors.white),
                                Text(
                                  'بستن',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ), */
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 115, 102, 68))),
                            onPressed: () => setState(() {
                                  isPressed = false;
                                }),
                            child: Icon(Icons.close_fullscreen_rounded)),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => ChapterPage(
                                        nft: nftsData[1],
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('مینت کردن ',
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
                                  child: Text('1',
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
                                        nft: nftsData[2],
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('گس فی چیست',
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
                                  child: Text('2',
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
                                        nft: nftsData[2],
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('لزی مینتیگ',
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
                                  child: Text('3',
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
                                        nft: nftsData[3],
                                      )),
                            ),
                            child: ListTile(
                              tileColor: Color.fromARGB(157, 32, 24, 24),
                              title: Text('NFT ساخت ',
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
                                  child: Text('4',
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
                AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.bounceInOut,
                    transform: Matrix4.translationValues(transform, 0, 0),
                    decoration: BoxDecoration(
                      shape: isPressed ? BoxShape.circle : BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('images/Chapter3CreateNFT.jpg'),
                        fit: BoxFit.cover,
                        opacity: 140,
                      ),
                      color: const Color.fromARGB(255, 34, 33, 33),
                      // borderRadius: BorderRadius.circular(15),
                    ),
                    width: isPressed ? width2 : width1,
                    height: isPressed ? width2 : width1,
                    child: isPressed
                        ? null
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'فصل سوم',
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
                                    'روش ساخت NFT',
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
