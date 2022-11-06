import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('https://www.linkedin.com/company/pars-string');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: _height,
          width: _width,
          color: Color.fromARGB(255, 39, 39, 39),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 115, 102, 68),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: _width / 90,
                    top: _width / 90,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_rounded),
                        color: Color.fromARGB(255, 115, 102, 68),
                        iconSize: 20,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 55,
                        child: Image.asset(
                          'assets/logo/pars_string.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            child: Text(
                              'برای بهتر شدن هر چه بهتر این نرم افزار در آپدیت های بعدی، ما نیاز به شنیدن نظرات شما کاربران عزیز داریم. با ما بدون هیچ خجالت و تعارفی در ارتباط باشید.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: 12,
                                        child: Icon(
                                          Icons.email,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'pars.string@gmail.com',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: 12,
                                        child: Icon(
                                          Icons.call,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '+98 930 295 7659',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: 12,
                                        child: Icon(
                                          Icons.call,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '+98 939 154 3702',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5,
                            ),
                            child: Text(
                              'همچنین برای با خبر شدن از آخرین اخبار در ارتباط با جدید ترین نرم افزارها، آپدیت ها و... شبکه های اجتماعی گروه نرم افزاری پارس استرینگ را دنبال کنید.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white38,
                                      radius: 12,
                                      child: Icon(
                                        Icons.link,
                                        color:
                                            Color.fromARGB(255, 115, 102, 68),
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: _launchUrl,
                                    child: Text(
                                      'linkedin.com/company/pars-string',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(),
                      Column(
                        children: const [
                          Text(
                            'Designed & Developed by Pars String Group',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'pars.string@gmail.com',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
