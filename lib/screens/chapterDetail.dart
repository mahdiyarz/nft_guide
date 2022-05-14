import 'package:flutter/material.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

class ChapterDetail extends StatefulWidget {
  String title, image, descriptions;

  NativeAdData? ad2;
  ChapterDetail(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.image,
      this.ad2})
      : super(key: key);

  @override
  State<ChapterDetail> createState() => _ChapterDetailState();
}

class _ChapterDetailState extends State<ChapterDetail> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  Color backgroundColor = Color(0xff707070);
  Color textColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: (widget.ad2 != null)
          ? BottomAppBar(
              child: Container(
              color: Color.fromARGB(255, 0, 0, 0),
              height: 50,
              child: Row(children: [
                ElevatedButton(
                    onPressed: (() {
                      TapsellPlus.instance.nativeBannerAdClicked(
                          widget.ad2!.responseId.toString());
                    }),
                    child: Text(
                      'کلیک کنید',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
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
      backgroundColor: backgroundColor,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: textColor,
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(180, 218, 75, 243)),
              width: 120,
              height: 40,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        backgroundColor = Color.fromARGB(255, 230, 230, 230);
                        textColor = Colors.black;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      maxRadius: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        backgroundColor = Colors.black;
                        textColor = Colors.white;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      maxRadius: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        backgroundColor = Color(0xff707070);
                        textColor = Colors.white70;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xff707070),
                      maxRadius: 15,
                    ),
                  ),
                ),
              ]),
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
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FloatingActionButton(
          onPressed: () {
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
    );
  }
}
