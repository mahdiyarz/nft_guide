import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'xd_google_pixel64.dart';
import 'xd_google_pixel66.dart';

class XDGooglePixel65 extends StatelessWidget {
  XDGooglePixel65({
    Key? key,
  }) : super(key: key);
  addBoolToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('firsttime', false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -125.5, end: -125.5),
            Pin(size: 653.0, end: -277.8),
            child: SvgPicture.string(
              _svg_tzsoe,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, end: 13.0),
            Pin(size: 43.0, end: 77.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDGooglePixel66()),
                );
              },
              child: const Text(
                'بعدی',
                style: TextStyle(
                  fontFamily: 'Modern No. 20',
                  fontSize: 20,
                  color: Color(0xffffffff),
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
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XDGooglePixel64()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: const BorderRadius.all(
                            Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffda4bf3),
                      borderRadius: const BorderRadius.all(
                          const Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
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
                        borderRadius: const BorderRadius.all(
                            Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 341.0, end: 3.0),
            Pin(size: 512.0, start: 29.0),
            child:
                // Adobe XD layer: 'untitled (1)' (shape)
                Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wp_board.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 3.0),
            Pin(size: 102.0, middle: 0.7896),
            child: SvgPicture.string(
              _svg_p4a4k3,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 73.0, end: 72.0),
            Pin(size: 67.0, middle: 0.7901),
            child: const Text(
              'تمامی اطلاعات مورد نیاز شما تنها با یک کلیک',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Modern No. 20',
                fontSize: 21,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
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
              child: const Text(
                'رد کردن',
                style: TextStyle(
                  fontFamily: 'Modern No. 20',
                  fontSize: 20,
                  color: Color.fromARGB(255, 196, 102, 212),
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_tzsoe =
    '<svg viewBox="-125.5 420.8 662.9 653.0" ><path transform="translate(-125.47, 398.0)" d="M 331.4736328125 84.02018737792969 C 355.0994873046875 83.69136047363281 396.9887084960938 20.58055877685547 420.1732177734375 22.81663131713867 C 453.8869018554688 26.06792068481445 447.6918640136719 57.61880874633789 464.4422607421875 121.2225952148438 C 477.1060791015625 128.0630645751953 509.8548278808594 114.4848022460938 523.0694580078125 121.2225952148438 C 603.1007080078125 162.028564453125 662.947265625 223.9493865966797 662.947265625 331.7981262207031 C 662.947265625 521.778076171875 514.5414428710938 675.7872924804688 331.4736328125 675.7872924804688 C 148.4058074951172 675.7872924804688 0 521.778076171875 0 331.7981262207031 C 0 245.8465423583984 51.46484375 164.174560546875 120.3740234375 145.74609375 C 122.8819351196289 144.8340759277344 125.4954376220703 144.5042572021484 128.4482727050781 144.6190795898438 C 147.5759124755859 145.35107421875 170.0577545166016 168.9082336425781 177.4580078125 157.807861328125 C 189.6005859375 115.713623046875 189.5888671875 45.44921875 225.1943359375 32.501708984375 C 254.326171875 14.468017578125 302.3292846679688 84.42582702636719 331.4736328125 84.02018737792969 Z" fill="#455a64" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p4a4k3 =
    '<svg viewBox="0.0 547.9 409.0 102.0" ><path transform="translate(61.24, 560.71)" d="M 30.97219276428223 2.8318030834198 L 282.3119201660156 -12.76772880554199 C 287.4056396484375 -12.76772880554199 300.08154296875 -7.928744316101074 313.1712341308594 -1.211552500724792 C 330.1850280761719 7.518951416015625 347.75537109375 19.53472328186035 347.75537109375 27.26767730712891 L 319.4383850097656 73.42509460449219 C 341.5228576660156 80.43125152587891 338.6234741210938 82.67322540283203 326.6944274902344 82.67322540283203 L 63.0125846862793 87.34073638916016 C 52.28835678100586 87.34073638916016 -43.72048568725586 93.8963623046875 -61.05602264404297 82.67322540283203 C -62.71746063232422 81.60179901123047 -52.85639190673828 74.78814697265625 -52.85639190673828 73.42509460449219 L -9.51502799987793 52.67806625366211 C -9.51502799987793 41.00440979003906 -42.67835998535156 17.6366024017334 -52.85639190673828 2.8318030834198 C -54.22025299072266 0.8312878012657166 39.13502883911133 7.243252754211426 30.97219276428223 2.8318030834198 Z" fill="#cf96d9" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
