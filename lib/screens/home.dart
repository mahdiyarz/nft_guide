import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_guide/Games/gameCard.dart';
import 'package:nft_guide/widgets/adBanner.dart';
import 'package:nft_guide/widgets/buildbottomsheet.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import '../widgets/nftListView.dart';
import 'dart:io';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    loadad();

    super.initState();
  }

  loadad() async {
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
      print('this is sinaaaaaaaaaaaa hahhahhahahahahhahaha');
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

      /* TapsellPlus.instance.requestNativeAd(zoneIdBannerMid).then((responseId) {
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
      }); */

      /* TapsellPlus.instance.requestNativeAd(zoneIdBannerDown).then((responseId) {
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
      }); */
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NFTراهنمای ',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: const Color(0xff707070),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (ctx) => BuildBottomsheet(context: ctx),
          ),
          child: const Icon(
            Icons.alternate_email_rounded,
            color: Colors.white70,
          ),
          elevation: 8,
          backgroundColor: Color(0xff707070),
          mini: true,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
