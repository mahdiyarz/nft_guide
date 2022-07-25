import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

import '../Games/gameCard.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/adBanner.dart';
import '../widgets/buildbottomsheet.dart';
import '../widgets/nftListView.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation1;
  Animation<double>? _animation2;
  Animation<double>? _animation3;

  bool _bool = true;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  String zoneIdBannerMid = '6278076347a6dd582add9bab';
  String zoneIdBannerDown = '62795b1847a6dd582add9c56';

  NativeAdData? bannerDataMid;
  NativeAdData? bannerDataDown;
  NativeAdData? ad2;
  void setAd2Data(NativeAdData nativeAd) {
    setState(() {
      ad2 = nativeAd;
    });
  }

  void setMIdData(NativeAdData data) {
    setState(() {
      bannerDataMid = data;
    });
  }

  void setDownData(NativeAdData data) {
    setState(() {
      bannerDataDown = data;
    });
  }

  @override
  void initState() {
    adloadmid();
    Timer(Duration(seconds: 10), () => adloaddown());
    Timer(Duration(seconds: 15), () => adloadsecondpage());

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _controller as Animation<double>,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: 1)
        .animate(_controller as Animation<double>)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _controller as Animation<double>,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  adloadmid() async {
    var _isConnectionSuccessful;
    try {
      final response = await InternetAddress.lookup('www.tapsell.ir');

      setState(() {
        _isConnectionSuccessful = response.isNotEmpty;
      });
    } on SocketException catch (e) {
      setState(() {
        _isConnectionSuccessful = false;
      });
    }

    if (_isConnectionSuccessful) {
      TapsellPlus.instance.requestNativeAd(zoneIdBannerMid).then((responseId) {
        if (responseId.isNotEmpty) {
          TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
            setMIdData(nativeAd);
            print(nativeAd.title);
            if (bannerDataMid != null) {
              print('true');
            } else {
              print('false');
            }
          }, onError: (errorPayload) {
            // Error when getting ad info
          });
        }
      }).catchError((error) {
        // Error requesting for an ad
      });
    }
  }

  adloaddown() async {
    var _isConnectionSuccessful;
    try {
      final response = await InternetAddress.lookup('www.tapsell.ir');

      setState(() {
        _isConnectionSuccessful = response.isNotEmpty;
      });
    } on SocketException catch (e) {
      setState(() {
        _isConnectionSuccessful = false;
      });
    }

    if (_isConnectionSuccessful) {
      TapsellPlus.instance.requestNativeAd(zoneIdBannerDown).then((responseId) {
        if (responseId.isNotEmpty) {
          TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
            setDownData(nativeAd);
            print(nativeAd.title);
            if (bannerDataDown != null) {
              print('true');
            } else {
              print('false');
            }
          }, onError: (errorPayload) {
            // Error when getting ad info
          });
        }
      }).catchError((error) {
        // Error requesting for an ad
      });
    }
  }

  adloadsecondpage() async {
    var _isConnectionSuccessful;
    try {
      final response = await InternetAddress.lookup('www.tapsell.ir');

      setState(() {
        _isConnectionSuccessful = response.isNotEmpty;
      });
    } on SocketException catch (e) {
      setState(() {
        _isConnectionSuccessful = false;
      });
    }

    if (_isConnectionSuccessful) {
      TapsellPlus.instance
          .requestNativeAd('627ff1c9faefa477a635d931')
          .then((responseId) {
        if (responseId.isNotEmpty) {
          TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
            setAd2Data(nativeAd);
            print(nativeAd.title);
            if (ad2 != null) {
              print('true');
            } else {
              print('false');
            }
          }, onError: (errorPayload) {
            // Error when getting ad info
          });
        }
      }).catchError((error) {
        // Error requesting for an ad
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            HapticFeedback.lightImpact();
            if (_bool == true) {
              _controller!.forward();
            } else {
              _controller!.reverse();
            }
            _bool = false;
          },
          child: Container(
            height: _width / 8.5,
            width: _width / 8.5,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.05),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                _bool == true ? Icons.settings : Icons.home,
                size: _width / 20,
                color: Colors.white70,
              ),
            ),
          ),
        ),
        // AppDrawer(
        //   controller: _controller,
        //   isBool: _bool,
        // ),
        //     InkWell(
        //   child: Icon(Icons.settings),
        // ),
        title: const Text(
          'NFTراهنمای ',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              GameCard(),
              NftListView(index: 0, ad2: ad2),
              NftListView(index: 1, ad2: ad2),
              NftListView(index: 2, ad2: ad2),
              (bannerDataMid != null)
                  ? AdBanner(data: bannerDataMid!)
                  : const SizedBox(
                      height: 0.1,
                    ),
              NftListView(index: 3, ad2: ad2),
              NftListView(index: 4, ad2: ad2),
              NftListView(index: 5, ad2: ad2),
              NftListView(index: 6, ad2: ad2),
              NftListView(index: 7, ad2: ad2),
              NftListView(index: 8, ad2: ad2),
              NftListView(index: 9, ad2: ad2),
              NftListView(index: 10, ad2: ad2),
              NftListView(index: 11, ad2: ad2),
              (bannerDataDown != null)
                  ? AdBanner(data: bannerDataDown!)
                  : const SizedBox(
                      height: 0.1,
                    ),
            ],
          ),
          CustomDrawer(
            isBool: _bool,
            animation1: _animation1,
            animation2: _animation2,
            animation3: _animation3,
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
