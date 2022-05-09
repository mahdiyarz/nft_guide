import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_guide/widgets/adBanner.dart';
import 'package:nft_guide/widgets/buildbottomsheet.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import '../widgets/nftListView.dart';

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
    // TODO: implement initState

    TapsellPlus.instance.requestNativeAd(zoneIdBannerMid).then((responseId) {
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

      print(responseId);
    }).catchError((error) {
      // Error requesting for an ad
    });
    TapsellPlus.instance.requestNativeAd(zoneIdBannerDown).then((responseId) {
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

      print(responseId);
    }).catchError((error) {
      // Error requesting for an ad
    });
    super.initState();
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
          NftListView(index: 0),
          NftListView(index: 1),
          NftListView(index: 2),
          NftListView(index: 3),
          (bannerDataMid != null)
              ? AdBanner(data: bannerDataMid!)
              : const SizedBox(
                  height: 0.1,
                ),
          NftListView(index: 4),
          NftListView(index: 5),
          NftListView(index: 6),
          NftListView(index: 7),
          NftListView(index: 8),
          NftListView(index: 9),
          NftListView(index: 10),
          NftListView(index: 11),
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
