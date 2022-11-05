import 'package:flutter/material.dart';

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
                width: _width * .9,
                height: _width * 1.7,
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
                          icon: Icon(Icons.arrow_forward_rounded),
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
                        Container(
                          height: _height / 1.5,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Text(
                                    'این نرم افزار جهت آگاهی بیشتر از تکنولوژی نو ظهور NFT برای شما کاربر گرامی توسط گروه نرم افزاری پارس استرینگ تهیه و تولید شده است.',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                    ),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Text(
                                    'لازم به ذکر است که بازارهای مالی مخصوصا ارز های دیجیتال دارای نوسانات زیادی هستند. بنابراین صرفا با اطلاعات ارائه شده توسط این نرم افزار اقدام به سرمایه گذاری در این بازارها را نکنید.',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                    ),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    'هرگونه کپی برداری از اطلاعات مندرج در این نرم افزار بلامانع است. در صورت تمایل با ذکر منبع از ما حمایت کنید.',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
      ),
    );
  }
}
