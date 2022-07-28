import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'راه های ارتباطی',
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
            top: 15,
            right: 10,
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
                    'شما می توانید از طریق ایمیل، پیام رسان واتساپ و تماس تلفنی جهت برقراری تماس با ما اقدام نمایید.',
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
                    'ما برای ارائه بهتر آپدیت های این نرم افزار به نظرات و پیشنهادات شما نیاز داریم. ما را از این موهبت دریغ نکنید. ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
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
