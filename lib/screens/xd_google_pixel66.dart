import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:nft_guide/screens/home.dart';

import 'xd_google_pixel64.dart';
import 'xd_google_pixel65.dart';

class XDGooglePixel66 extends StatelessWidget {
  XDGooglePixel66({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff474064),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 80, end: 15.0),
            Pin(size: 43.0, end: 77.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text(
                'بزن بریم',
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
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.1, end: 13.6),
            Pin(size: 289.9, start: 105.7),
            child:
                // Adobe XD layer: 'Outer space-bro' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'freepik--Stars--inj…' (group)
                Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 8.6, start: 8.7),
                      Pin(size: 8.6, middle: 0.7316),
                      child: SvgPicture.string(
                        _svg_tx4yg,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.319, -0.628),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_rhb5f,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.6, middle: 0.7022),
                      Pin(size: 8.6, end: 18.9),
                      child: SvgPicture.string(
                        _svg_xn3gr6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.6, end: 9.2),
                      Pin(size: 8.6, middle: 0.624),
                      child: SvgPicture.string(
                        _svg_r01r,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.6, middle: 0.5172),
                      Pin(size: 8.6, end: 2.6),
                      child: SvgPicture.string(
                        _svg_r5hfr6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.6, end: 50.9),
                      Pin(size: 8.6, end: 10.6),
                      child: SvgPicture.string(
                        _svg_xc643p,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.054, -1.0),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_sg8krj,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.079, 0.13),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_vzfgx,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.3, start: 37.8),
                      Pin(size: 4.3, middle: 0.5956),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.296, 0.25),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_e93ai6,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.206, -0.325),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_kzd32d,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.422, -0.198),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_h10cxl,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.166, 0.53),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_rsh6rv,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.304, 0.08),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_vlgcnp,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.159, -0.526),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_ooblsp,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.105, -0.229),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_venw4r,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.3, start: 33.7),
                      Pin(size: 4.3, end: 49.6),
                      child: SvgPicture.string(
                        _svg_f56on5,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.3, start: 39.7),
                      Pin(size: 4.3, end: 6.2),
                      child: SvgPicture.string(
                        _svg_h9nq8g,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.3, middle: 0.7364),
                      Pin(size: 4.3, end: 44.3),
                      child: SvgPicture.string(
                        _svg_nm9tg2,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.486, 1.0),
                      child: SizedBox(
                        width: 4.0,
                        height: 4.0,
                        child: SvgPicture.string(
                          _svg_con7ds,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 4.3, end: 20.3),
                      Pin(size: 4.3, middle: 0.7756),
                      child: SvgPicture.string(
                        _svg_o0937j,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.433, -0.59),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.176, 0.314),
                      child: Transform.rotate(
                        angle: -1.5149,
                        child: Container(
                          width: 14.0,
                          height: 14.0,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.1, middle: 0.7416),
                      Pin(size: 11.1, start: 23.3),
                      child: Transform.rotate(
                        angle: -0.025,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 11.1, start: 0.0),
                      Pin(size: 11.1, end: 21.5),
                      child: SvgPicture.string(
                        _svg_qngxj,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 9.0, end: 64.6),
                      Pin(size: 9.0, end: 1.9),
                      child: SvgPicture.string(
                        _svg_kl54id,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.102, 0.271),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_qvs75,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(1.0, 0.181),
                      child: SizedBox(
                        width: 9.0,
                        height: 9.0,
                        child: SvgPicture.string(
                          _svg_wa4la,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 9.0, start: 46.6),
                      Pin(size: 9.0, middle: 0.5796),
                      child: Transform.rotate(
                        angle: -0.025,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 9.0, middle: 0.392),
                      Pin(size: 9.0, start: 26.9),
                      child: SvgPicture.string(
                        _svg_zddsp5,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 5.0, end: -40.0),
            Pin(size: 512.0, start: 45.0),
            child:
                // Adobe XD layer: 'Screenshot 2022-05-…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/wp_astro2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 61.0, end: 61.0),
            Pin(size: 28.0, middle: 0.7578),
            child: Text(
              'آماده سفر به دنیای بلاکچین هستی؟ ',
              style: TextStyle(
                fontFamily: 'Modern No. 20',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_tx4yg =
    '<svg viewBox="73.8 286.8 8.6 8.6" ><path  d="M 78 286.8299865722656 C 75.63186645507812 286.8915100097656 73.76181793212891 288.86083984375 73.82279968261719 291.22900390625 C 73.8837890625 293.59716796875 75.85272216796875 295.4676208496094 78.22088623046875 295.4071655273438 C 80.58905029296875 295.3467102050781 82.4599609375 293.378173828125 82.40000915527344 291.010009765625 C 82.34004974365234 288.640380859375 80.36962127685547 286.7684631347656 78 286.8300170898438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rhb5f =
    '<svg viewBox="310.2 133.3 8.6 8.6" ><path  d="M 314.4100036621094 133.2799987792969 C 312.0418701171875 133.3414764404297 310.1718139648438 135.3108062744141 310.2327880859375 137.678955078125 C 310.2937622070312 140.0471038818359 312.2626647949219 141.9176025390625 314.630859375 141.8571472167969 C 316.9990234375 141.7966918945312 318.8699340820312 139.8281707763672 318.8099975585938 137.4599914550781 C 318.75 135.0903625488281 316.7796020507812 133.2184600830078 314.4100036621094 133.2799835205078 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xn3gr6 =
    '<svg viewBox="326.2 343.5 8.6 8.6" ><path  d="M 330.3699951171875 343.4700012207031 C 328.0003967285156 343.5260009765625 326.1252746582031 345.4930725097656 326.1826477050781 347.8626403808594 C 326.2400512695312 350.2322082519531 328.2081909179688 352.1062316894531 330.5777282714844 352.0474853515625 C 332.947265625 351.9887390136719 334.8201293945312 350.0195007324219 334.760009765625 347.6499938964844 C 334.7338256835938 346.5129699707031 334.2561645507812 345.4331359863281 333.4324951171875 344.6488952636719 C 332.6088562011719 343.8646240234375 331.5069274902344 343.4404296875 330.3699951171875 343.469970703125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r01r =
    '<svg viewBox="427.7 256.6 8.6 8.6" ><path  d="M 431.8800048828125 256.5700073242188 C 429.5104064941406 256.6260375976562 427.63525390625 258.5931091308594 427.692626953125 260.9626770019531 C 427.7500305175781 263.3322448730469 429.7181701660156 265.2062683105469 432.0877075195312 265.1475219726562 C 434.4572448730469 265.0887451171875 436.3301391601562 263.1195373535156 436.2699890136719 260.75 C 436.2099609375 258.3843994140625 434.2457275390625 256.5141296386719 431.8800354003906 256.5700073242188 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r5hfr6 =
    '<svg viewBox="257.4 359.7 8.6 8.6" ><path  d="M 261.6199951171875 359.7200012207031 C 259.8836364746094 359.7570190429688 258.3409118652344 360.8372497558594 257.7122802734375 362.4562377929688 C 257.0836486816406 364.0752563476562 257.4931945800781 365.9135131835938 258.7496032714844 367.1125793457031 C 260.0060424804688 368.3116149902344 261.8614501953125 368.6348266601562 263.4493103027344 367.9312438964844 C 265.0371704101562 367.2276916503906 266.0441589355469 365.6361694335938 266 363.8999633789062 C 265.9454040527344 361.5359191894531 263.9840087890625 359.6640930175781 261.6199951171875 359.719970703125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xc643p =
    '<svg viewBox="386.0 351.8 8.6 8.6" ><path  d="M 390.1400146484375 351.7699890136719 C 387.7718505859375 351.8314514160156 385.9017944335938 353.8008117675781 385.9627685546875 356.1689453125 C 386.0237426757812 358.537109375 387.99267578125 360.4075927734375 390.36083984375 360.3471374511719 C 392.72900390625 360.2866821289062 394.5999145507812 358.3181457519531 394.5399780273438 355.9499816894531 C 394.5137939453125 354.8112182617188 394.0347595214844 353.7298583984375 393.2089538574219 352.9453125 C 392.3831176757812 352.1607971191406 391.2786560058594 351.73779296875 390.1400451660156 351.77001953125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sg8krj =
    '<svg viewBox="241.0 81.0 8.6 8.6" ><path  d="M 245.1799926757812 81 C 242.8118591308594 81.06150054931641 240.9418029785156 83.03083801269531 241.0027923583984 85.39898681640625 C 241.0637664794922 87.76713562011719 243.0326995849609 89.63761901855469 245.4008636474609 89.57715606689453 C 247.7690124511719 89.51669311523438 249.6399383544922 87.54817962646484 249.5799865722656 85.18000030517578 C 249.52001953125 82.81035614013672 247.5495910644531 80.93845367431641 245.1799926757812 81 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vzfgx =
    '<svg viewBox="236.4 239.9 8.6 8.6" ><path  d="M 243.7299957275391 241 C 239.0500030517578 237.6199951171875 233.989990234375 242.9400024414062 237.5999908447266 247.4400024414062 C 242.2799987792969 250.7700042724609 247.3399963378906 245.4600067138672 243.7299957275391 241 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e93ai6 =
    '<svg viewBox="197.4 259.4 4.4 4.4" ><path  d="M 201.1600036621094 260 C 200.2708282470703 259.1549987792969 198.864990234375 259.1907958984375 198.0200042724609 260.0799865722656 C 197.1750030517578 260.9691772460938 197.2108306884766 262.375 198.1000061035156 263.2200012207031 C 198.9891967773438 264.0649719238281 200.39501953125 264.0291748046875 201.2400054931641 263.1399841308594 C 202.0850067138672 262.2507934570312 202.0491790771484 260.844970703125 201.1600036621094 260 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kzd32d =
    '<svg viewBox="212.8 176.0 8.6 8.6" ><path  d="M 220.1699981689453 177.0800018310547 C 215.4900054931641 173.6999969482422 210.4400024414062 179.0200042724609 214.0399932861328 183.5200042724609 C 218.7200012207031 186.8999938964844 223.7799987792969 181.5800018310547 220.1699981689453 177.0800018310547 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h10cxl =
    '<svg viewBox="173.8 195.5 4.4 4.4" ><path  d="M 177.6000061035156 196.1600036621094 C 176.7108154296875 195.3150024414062 175.3049926757812 195.350830078125 174.4599914550781 196.2400054931641 C 173.614990234375 197.1291809082031 173.6508178710938 198.5350036621094 174.5399932861328 199.3800048828125 C 175.4291687011719 200.2250061035156 176.8350067138672 200.1891937255859 177.6800079345703 199.3000183105469 C 178.5250091552734 198.4108276367188 178.4891967773438 197.0050048828125 177.6000061035156 196.1600036621094 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rsh6rv =
    '<svg viewBox="284.4 299.5 4.3 4.3" ><path  d="M 286.5 299.5 C 285.6298828125 299.5205688476562 284.8580017089844 300.063720703125 284.5448303222656 300.8757934570312 C 284.2316589355469 301.6878662109375 284.4389953613281 302.608642578125 285.0700073242188 303.2081298828125 C 285.7010498046875 303.8075866699219 286.6312255859375 303.9674682617188 287.4262084960938 303.6131286621094 C 288.2211608886719 303.2587585449219 288.7240600585938 302.4600524902344 288.7000122070312 301.5899963378906 C 288.6673278808594 300.4063720703125 287.6837768554688 299.4719848632812 286.5000305175781 299.4999694824219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vlgcnp =
    '<svg viewBox="310.3 235.2 4.3 4.3" ><path  d="M 312.4500122070312 235.2100067138672 C 311.578857421875 235.2265625 310.8038330078125 235.7672424316406 310.4875183105469 236.5791015625 C 310.1712036132812 237.3909606933594 310.3761596679688 238.3134613037109 311.0065002441406 238.9149932861328 C 311.6368103027344 239.5165405273438 312.56787109375 239.6781768798828 313.3640747070312 239.3242950439453 C 314.1602783203125 238.9704132080078 314.6641845703125 238.1709747314453 314.6400146484375 237.3000030517578 C 314.6072998046875 236.1203765869141 313.6298828125 235.1875915527344 312.4500122070312 235.2100067138672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ooblsp =
    '<svg viewBox="223.3 148.7 4.3 4.3" ><path  d="M 225.4199981689453 148.7400054931641 C 224.5488433837891 148.7565460205078 223.7738189697266 149.2972259521484 223.4575042724609 150.1090850830078 C 223.1411895751953 150.9209442138672 223.3461303710938 151.8434448242188 223.9764556884766 152.4449920654297 C 224.6067810058594 153.0465393066406 225.5378570556641 153.2081756591797 226.3340454101562 152.8542938232422 C 227.1302490234375 152.5004119873047 227.6341400146484 151.7009735107422 227.6099853515625 150.8300170898438 C 227.5772552490234 149.6504058837891 226.599853515625 148.7176208496094 225.4199829101562 148.7400207519531 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_venw4r =
    '<svg viewBox="273.0 191.1 4.3 4.3" ><path  d="M 275.0899963378906 191.1199951171875 C 274.2198486328125 191.1405792236328 273.4479675292969 191.6837463378906 273.1348266601562 192.4958343505859 C 272.8216552734375 193.3079071044922 273.0290222167969 194.2286834716797 273.6600341796875 194.8281555175781 C 274.2910461425781 195.4276123046875 275.2212524414062 195.5874938964844 276.0162048339844 195.2331237792969 C 276.8111877441406 194.8787384033203 277.3140563964844 194.0800323486328 277.2900085449219 193.2099914550781 C 277.2572937011719 192.0263671875 276.2737426757812 191.0919952392578 275.0899963378906 191.1199951171875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f56on5 =
    '<svg viewBox="98.8 317.0 4.3 4.3" ><path  d="M 100.9100036621094 317 C 100.0398788452148 317.0205383300781 99.26799011230469 317.5636901855469 98.95481872558594 318.3757629394531 C 98.64164733886719 319.1878356933594 98.84898376464844 320.1086120605469 99.48000335693359 320.7080993652344 C 100.1110229492188 321.3075561523438 101.0412139892578 321.4674682617188 101.836181640625 321.1130981445312 C 102.6311492919922 320.7587280273438 103.1340408325195 319.9600219726562 103.1100006103516 319.0899658203125 C 103.0969085693359 318.5205688476562 102.8573913574219 317.9798889160156 102.4444732666016 317.5876159667969 C 102.0315551757812 317.1953430175781 101.4793090820312 316.9838562011719 100.9100036621094 317 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h9nq8g =
    '<svg viewBox="104.9 360.5 4.3 4.3" ><path  d="M 107 360.4700012207031 C 106.1288528442383 360.4866027832031 105.3538208007812 361.0272827148438 105.0375061035156 361.8391418457031 C 104.72119140625 362.6510009765625 104.9261474609375 363.573486328125 105.5564804077148 364.175048828125 C 106.1868133544922 364.7765808105469 107.1178817749023 364.938232421875 107.9140777587891 364.5843200683594 C 108.7102813720703 364.2304382324219 109.2141647338867 363.4309997558594 109.1899948120117 362.5600280761719 C 109.162712097168 361.3779907226562 108.1820220947266 360.4420776367188 106.9999923706055 360.4700012207031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nm9tg2 =
    '<svg viewBox="342.0 322.4 4.3 4.3" ><path  d="M 346.3399963378906 324.4800109863281 C 346.3194274902344 323.60986328125 345.7762756347656 322.8380126953125 344.9641723632812 322.5248413085938 C 344.152099609375 322.211669921875 343.2313232421875 322.4190368652344 342.6318664550781 323.050048828125 C 342.0324096679688 323.6810607910156 341.8725280761719 324.6112670898438 342.2268981933594 325.4062194824219 C 342.5812377929688 326.201171875 343.3799438476562 326.7040710449219 344.25 326.6800231933594 C 345.4336242675781 326.6473388671875 346.3680114746094 325.6637573242188 346.3400268554688 324.4800109863281 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_con7ds =
    '<svg viewBox="344.6 366.7 4.3 4.3" ><path  d="M 346.6700134277344 366.6600036621094 C 345.4900512695312 366.6934204101562 344.5599975585938 367.6759338378906 344.59130859375 368.8559265136719 C 344.6226196289062 370.0359191894531 345.6034851074219 370.9677429199219 346.7835388183594 370.9385070800781 C 347.9635925292969 370.9093017578125 348.8971252441406 369.9300842285156 348.8699951171875 368.75 C 348.8569030761719 368.1806030273438 348.6174011230469 367.6399230957031 348.2044677734375 367.2476501464844 C 347.7915649414062 366.8553771972656 347.2392883300781 366.6438903808594 346.6699829101562 366.6600341796875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o0937j =
    '<svg viewBox="420.9 302.5 4.3 4.3" ><path  d="M 423 302.5499877929688 C 422.1298828125 302.5705871582031 421.3580017089844 303.1137390136719 421.0448303222656 303.9258117675781 C 420.7316589355469 304.7378845214844 420.9389953613281 305.65869140625 421.5700378417969 306.2581481933594 C 422.2010498046875 306.8576354980469 423.1312561035156 307.0175170898438 423.9262084960938 306.6631164550781 C 424.72119140625 306.3087463378906 425.2240600585938 305.5100402832031 425.2000122070312 304.6399841308594 C 425.1672973632812 303.4563903808594 424.1837463378906 302.5220031738281 423.0000305175781 302.5499877929688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qngxj =
    '<svg viewBox="65.1 338.3 11.1 11.1" ><path  d="M 70.55999755859375 338.2900085449219 C 70.06999969482422 342.760009765625 69.55999755859375 343.2900085449219 65.14999389648438 343.9800109863281 C 69.6199951171875 344.4800109863281 70.14999389648438 344.9800109863281 70.83999633789062 349.4000244140625 C 71.33999633789062 344.9200134277344 71.83999633789062 344.4000244140625 76.25999450683594 343.7000122070312 C 71.79000091552734 343.2099914550781 71.27999877929688 342.7300109863281 70.55999755859375 338.2900085449219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kl54id =
    '<svg viewBox="371.8 360.0 9.0 9.0" ><path  d="M 376.2099914550781 360 C 375.8099975585938 363.6400146484375 375.4199829101562 364.0499877929688 371.8099975585938 364.6300048828125 C 375.4400024414062 365.0299987792969 375.8099975585938 365.4200134277344 376.4299926757812 369.0299987792969 C 376.8399963378906 365.3999938964844 377.22998046875 365.0299987792969 380.8399963378906 364.4100036621094 C 377.2000122070312 364 376.7900085449219 363.6400146484375 376.2099914550781 360 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qvs75 =
    '<svg viewBox="269.7 259.5 9.0 9.0" ><path  d="M 274.1000061035156 259.4700012207031 C 273.7000122070312 263.1000061035156 273.3099975585938 263.4700012207031 269.7000122070312 264.1000061035156 C 273.3300170898438 264.5 273.7000122070312 264.8900146484375 274.3300170898438 268.5 C 274.7300109863281 264.8599853515625 275.1200256347656 264.4500122070312 278.7300109863281 263.8699951171875 C 275.0899963378906 263.4700012207031 274.6799926757812 263.0799865722656 274.1000061035156 259.4700012207031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wa4la =
    '<svg viewBox="436.4 246.9 9.0 9.0" ><path  d="M 440.8500061035156 246.9299926757812 C 440.4400024414062 250.5599975585938 440.0500183105469 250.9299926757812 436.4400024414062 251.5599975585938 C 440.0800170898438 251.9599914550781 440.489990234375 252.3499908447266 441.0700073242188 255.9599914550781 C 441.4700012207031 252.3199920654297 441.8600158691406 251.9099884033203 445.4700012207031 251.3299865722656 C 441.8399963378906 250.9299926757812 441.4299926757812 250.5399932861328 440.8500061035156 246.9299926757812 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zddsp5 =
    '<svg viewBox="210.7 107.9 9.0 9.0" ><path  d="M 215.1100006103516 107.8600006103516 C 214.6999969482422 111.5 214.3099975585938 111.8600006103516 210.6999969482422 112.4899978637695 C 214.3399963378906 112.8899993896484 214.75 113.2799987792969 215.3300018310547 116.8899993896484 C 215.7299957275391 113.2600021362305 216.1199951171875 112.8899993896484 219.7299957275391 112.2600021362305 C 216.1000061035156 111.8600006103516 215.6900024414062 111.4700012207031 215.1100006103516 107.8600006103516 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
