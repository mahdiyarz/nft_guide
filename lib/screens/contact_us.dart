import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  final Uri _url = Uri.parse('https://www.linkedin.com/company/pars-string');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
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
              width: _width * .9,
              height: _width * 1.8,
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
                          'assets/images/pars-string.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Text(
                              'برای بهتر شدن هر چه بهتر این نرم افزار در آپدیت های بعدی، ما نیاز به شنیدن نظرات شما کاربران عزیز داریم. با ما بدون هیچ خجالت و تعارفی در ارتباط باشید.',
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
                                        backgroundColor: Colors.white38,
                                        radius: 14,
                                        child: Icon(
                                          Icons.email,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
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
                                        backgroundColor: Colors.white38,
                                        radius: 14,
                                        child: Icon(
                                          Icons.call,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '+98 930 295 7659',
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
                                        backgroundColor: Colors.white38,
                                        radius: 14,
                                        child: Icon(
                                          Icons.call,
                                          color:
                                              Color.fromARGB(255, 115, 102, 68),
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '+98 939 154 3702',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Text(
                              'همچنین برای با خبر شدن از آخرین اخبار در ارتباط با جدید ترین نرم افزارها، آپدیت ها و... شبکه های اجتماعی گروه نرم افزاری پارس استرینگ را دنبال کنید.',
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
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white38,
                                    radius: 14,
                                    child: Icon(
                                      Icons.link,
                                      color: Color.fromARGB(255, 115, 102, 68),
                                      size: 18,
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
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
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

    Scaffold(
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
