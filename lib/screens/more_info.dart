import 'package:flutter/material.dart';

class MoreInformation extends StatelessWidget {
  const MoreInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اطلاعات بیشتر',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        toolbarHeight: 40,
      ),
      backgroundColor: Color.fromARGB(255, 115, 102, 68),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80, right: 10, left: 10, bottom: 10),
            width: _width,
            // height: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 52, 56, 59),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(100),
                topRight: Radius.circular(5),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55,
              child: Image.asset(
                'assets/images/pars-string.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: _width / 2.5),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    'این نرم افزار جهت آگاهی بیشتر از تکنولوژی نو ظهور NFT برای شما کاربر گرامی تهیه و تولید شده.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'با گروه نرم افزاری پارس استرینگ در ارتباط باشید:',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
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
                              backgroundColor:
                                  Color.fromARGB(255, 115, 102, 68),
                              radius: 14,
                              child: Icon(
                                Icons.email,
                                color: Colors.white70,
                                size: 18,
                              ),
                            ),
                          ),
                          Text(
                            'pars.string@gmail.com',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 115, 102, 68),
                              radius: 14,
                              child: Icon(
                                Icons.whatsapp,
                                color: Colors.white70,
                                size: 18,
                              ),
                            ),
                          ),
                          Text(
                            '09302957659',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 115, 102, 68),
                              radius: 14,
                              child: Icon(
                                Icons.whatsapp,
                                color: Colors.white70,
                                size: 18,
                              ),
                            ),
                          ),
                          Text(
                            '09391543702',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
