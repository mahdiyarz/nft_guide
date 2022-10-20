import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class WarningScreen extends StatelessWidget {
  const WarningScreen({Key? key}) : super(key: key);
  addBoolToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('firsttime', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/warning.png'),
            Text(
              'توجه ',
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                  'بازار NFT بازار پر ریسکی است و این احتمال وجود دارد که شما تمام سرمایه خود را از دست بدهید، این برنامه فقط اطلاعاتی جهت آشنایی بیشتر شما با NFT در اختیار شما قرار می دهد و هیچ گونه مسولیتی در قبال ضرر و زیان شما در این بازار ندارد. برای ورود به این بازار پر خطر شما نیاز به دانش بسیار بالایی دارید و نمی توانید فقط با تکیه به اطلاعات این برنامه وارد بازار شوید.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 171, 171, 171),
                    fontSize: 18.5,
                    fontWeight: FontWeight.normal,
                    height: 1.55,
                    fontFamily: 'Vazir',
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify),
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 142, 183, 65),
                  )),
                  onPressed: () {
                    addBoolToSF();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                        (route) => false);
                  },
                  child: Text('قبول می کنم')),
            )
          ],
        ),
      )),
    );
  }
}
