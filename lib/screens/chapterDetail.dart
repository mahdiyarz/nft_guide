import 'package:flutter/material.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

class ChapterDetail extends StatefulWidget {
  String title, image, descriptions;
  ChapterDetail({
    Key? key,
    required this.title,
    required this.descriptions,
    required this.image,
  }) : super(key: key);

  @override
  State<ChapterDetail> createState() => _ChapterDetailState();
}

class _ChapterDetailState extends State<ChapterDetail> {
  String responseid = '';
  void setResponseId(String id) {
    responseid = id;
  }

  @override
  void initState() {
    // TODO: implement initState
    TapsellPlus.instance
        .requestStandardBannerAd(
            '627e791825def655dd1e4e17', TapsellPlusBannerType.BANNER_320x50)
        .then((responseId) {
      setResponseId(responseId);
      TapsellPlus.instance.showStandardBannerAd(responseId,
          TapsellPlusHorizontalGravity.BOTTOM, TapsellPlusVerticalGravity.RIGHT,
          margin: EdgeInsets.only(top: 100), onOpened: (map) {
        // Ad opened
      }, onError: (map) {
        // Error when showing ad
      });
      // SAVE the responseId
    }).catchError((error) {
      // Error when requesting for an ad
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return TapsellPlus.instance.destroyStandardBanner(responseid);
      },
      child: Scaffold(
        backgroundColor: Color(0xff707070),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 25.0,
                        color: Colors.white70,
                        offset: Offset(0.5, 0.5),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                indent: 45,
                endIndent: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Text(
                  widget.descriptions,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: FloatingActionButton(
            onPressed: () {
              TapsellPlus.instance.destroyStandardBanner(responseid);
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.home,
              color: Colors.white70,
            ),
            elevation: 8,
            backgroundColor: const Color.fromARGB(180, 218, 75, 243),
            mini: true,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartDocked,
      ),
    );
  }
}
