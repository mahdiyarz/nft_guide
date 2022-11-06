import 'package:flutter/material.dart';
import '../widgets/back_button.dart';
import '../widgets/logo.dart';
import '../widgets/sign.dart';
import '../widgets/texts_on_menu.dart';

class MoreInformation extends StatelessWidget {
  const MoreInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
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
                              text:
                                  'این نرم افزار جهت آگاهی بیشتر از تکنولوژی نو ظهور NFT برای شما کاربر گرامی توسط گروه نرم افزاری پارس استرینگ تهیه و تولید شده است.',
                              isBold: false,
                            ),
                            TextsOnMenu(
                              text:
                                  'لازم به ذکر است که بازارهای مالی مخصوصا ارز های دیجیتال دارای نوسانات زیادی هستند. بنابراین صرفا با اطلاعات ارائه شده توسط این نرم افزار اقدام به سرمایه گذاری در این بازارها را نکنید.',
                              isBold: false,
                            ),
                            TextsOnMenu(
                                text:
                                    'هرگونه کپی برداری از اطلاعات مندرج در این نرم افزار بلامانع است. در صورت تمایل با ذکر منبع از ما حمایت کنید.',
                                vertical: 10,
                                isBold: true),
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
      ),
    );
  }
}
