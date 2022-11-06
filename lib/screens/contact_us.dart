import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_guide/widgets/back_button.dart';
import 'package:nft_guide/widgets/contact_detail.dart';
import 'package:nft_guide/widgets/logo.dart';
import 'package:nft_guide/widgets/sign.dart';
import 'package:nft_guide/widgets/texts_on_menu.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('https://www.linkedin.com/company/pars-string');

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
                  MyBackButton(width: _width),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ParsStringLogo(),
                      Column(
                        children: [
                          TextsOnMenu(
                            isBold: false,
                            text:
                                'برای بهتر شدن هر چه بهتر این نرم افزار در آپدیت های بعدی، ما نیاز به شنیدن نظرات شما کاربران عزیز داریم. با ما بدون هیچ خجالت و تعارفی در ارتباط باشید.',
                          ),
                          ContactDetail(
                            text: 'pars.string@gmail.com',
                            myIcon: Icons.mail,
                          ),
                          SizedBox(height: 5),
                          ContactDetail(
                            text: '+98 930 295 7659',
                            myIcon: Icons.phone_in_talk,
                          ),
                          SizedBox(height: 5),
                          ContactDetail(
                            text: '+98 939 154 3702',
                            myIcon: Icons.phone_in_talk,
                          ),
                          SizedBox(height: 5),
                          TextsOnMenu(
                            isBold: false,
                            text:
                                'همچنین برای با خبر شدن از آخرین اخبار در ارتباط با جدید ترین نرم افزارها، آپدیت ها و... شبکه های اجتماعی گروه نرم افزاری پارس استرینگ را دنبال کنید.',
                          ),
                          ContactDetail(
                            text: 'linkedin.com/company/pars-string',
                            myIcon: Icons.link,
                            url: _url,
                          ),
                        ],
                      ),
                      const SizedBox(),
                      ParsStringSign(),
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
