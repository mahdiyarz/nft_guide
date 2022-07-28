import 'package:flutter/material.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

class ChapterDetail extends StatefulWidget {
  String title, image;
  List<String> descriptions;
  String? descriptionsImage;
  String? starNote;
  List<String>? descriptions2;
  String? descriptionsImage2;
  String? starNote2;

  NativeAdData? ad2;
  ChapterDetail(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.image,
      this.descriptionsImage,
      this.starNote,
      this.descriptions2,
      this.descriptionsImage2,
      this.starNote2,
      this.ad2})
      : super(key: key);

  @override
  State<ChapterDetail> createState() => _ChapterDetailState();
}

class _ChapterDetailState extends State<ChapterDetail> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
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
      bottomNavigationBar: (widget.ad2 != null)
          ? BottomAppBar(
              child: Container(
              color: Color.fromARGB(255, 50, 55, 61),
              height: 50,
              child: Row(children: [
                ElevatedButton(
                  onPressed: (() {
                    TapsellPlus.instance.nativeBannerAdClicked(
                        widget.ad2!.responseId.toString());
                  }),
                  child: Text(
                    'کلیک کنید',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 142, 183, 65),
                  ),
                ),
                Text(
                  widget.ad2!.description.toString(),
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                IconButton(
                  icon: Image.network(widget.ad2!.iconUrl.toString()),
                  onPressed: () {
                    TapsellPlus.instance.nativeBannerAdClicked(
                        widget.ad2!.responseId.toString());
                  },
                ),
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
            ))
          : BottomAppBar(
              color: Colors.transparent,
            ),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: _width,
                  height: _width / 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image.toString()),
                          fit: BoxFit.cover)),
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(6, 70, 66, 66),
                    Color.fromARGB(255, 39, 39, 39),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  height: 80,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 15,
                left: 15,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ...widget.descriptions
                          .map(
                            (e) => Text(
                              e,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color.fromARGB(255, 171, 171, 171),
                                fontSize: 18.5,
                                fontWeight: FontWeight.normal,
                                height: 1.55,
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 56, 59),
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
            widget.starNote != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.event_note,
                          color: Colors.amberAccent,
                        ),
                        Flexible(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(widget.starNote.toString(),
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 227, 227, 225),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center),
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 115, 102, 68),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(3))),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            widget.descriptionsImage != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                    ),
                    child: Container(
                      width: _width,
                      height: _width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.descriptionsImage.toString()),
                              fit: BoxFit.fill)),
                    ),
                  )
                : SizedBox(),
            widget.descriptions2 != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                    ),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ...widget.descriptions2!
                                .map(
                                  (e) => Text(
                                    e,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 171, 171, 171),
                                      fontSize: 18.5,
                                      fontWeight: FontWeight.normal,
                                      height: 1.55,
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 52, 56, 59),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  )
                : SizedBox(),
            widget.starNote2 != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 15,
                      left: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(widget.starNote2.toString(),
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 227, 227, 225),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center),
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 115, 102, 68),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(3))),
                          ),
                        ),
                        Icon(
                          Icons.event_note,
                          color: Colors.amberAccent,
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
