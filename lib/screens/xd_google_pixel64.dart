import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:nft_guide/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'xd_google_pixel65.dart';
import 'xd_google_pixel66.dart';

class XDGooglePixel64 extends StatelessWidget {
  XDGooglePixel64({
    Key? key,
  }) : super(key: key);
  addBoolToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('firsttime', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff455a64),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 72.0, end: 13.0),
            Pin(size: 45.0, start: 50.0),
            child: TextButton(
              onPressed: () {
                addBoolToSF();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (route) => false);
              },
              child: Text(
                'رد کردن',
                style: TextStyle(
                  fontFamily: 'Modern No. 20',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, end: 15.0),
            Pin(size: 43.0, end: 77.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDGooglePixel65()),
                );
              },
              child: Text(
                'بعدی',
                style: TextStyle(
                  fontFamily: 'Modern No. 20',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 44.0, middle: 0.5),
            Pin(size: 14.0, end: 84.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 12.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffda4bf3),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XDGooglePixel65()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XDGooglePixel66()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.516),
            child: SizedBox(
              width: 215.0,
              height: 28.0,
              child: Text(
                'NFTپکیج مقدماتی آشنایی با ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -65.0, end: -22.0),
            Pin(size: 446.0, start: 75.0),
            child:
                // Adobe XD layer: 'untitled' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/wp_goal.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
