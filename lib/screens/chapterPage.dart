import 'package:flutter/material.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lottie/lottie.dart';

import '../models/nftModel.dart';
import '../screens/chapterSlidePage.dart';

class ChapterPage extends StatefulWidget {
  final Nfts nft;
  final NativeAdData? ad2;

  ChapterPage({
    Key? key,
    this.ad2,
    required this.nft,
  }) : super(key: key);

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage>
    with SingleTickerProviderStateMixin {
  bool _isPullRight = true;
  Future isFirstPull() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstPull = prefs.getBool('firstPull') ?? true;

    if (firstPull) {
      await prefs.setBool('firstPull', false);
      setState(() {
        _isPullRight = false;
      });
    } else {
      setState(() {
        _isPullRight = true;
      });
    }
  }

  Future dragHorizontal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstPull', false);
  }

  PageController _controller = PageController(
    initialPage: 0,
  );
  void changeDot(int x) {
    setState(() {
      dotindex = x.toInt();
      _dotcontroller.animateTo(dotindex);
    });
  }

  late final TabController _dotcontroller;
  int dotindex = 0;

  void initState() {
    isFirstPull();

    super.initState();
    _dotcontroller = TabController(
      length: widget.nft.chapterDetailList.length,
      initialIndex: dotindex,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: widget.nft.chapterDetailList.length > 1
          ? BottomAppBar(
              elevation: 0,
              color: Color.fromARGB(255, 39, 39, 39),
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                  color: Color.fromARGB(255, 50, 55, 61),
                ),
                child: Center(
                  child: TabPageSelector(
                    selectedColor: Color.fromARGB(255, 142, 183, 65),
                    controller: _dotcontroller,
                  ),
                ),
                height: 30,
              ))
          : SizedBox(),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      appBar: AppBar(
        title: Text(
          '${widget.nft.chapter}: ${widget.nft.title} ',
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
      body: GestureDetector(
        onHorizontalDragStart: ((details) {
          dragHorizontal();
          setState(() {
            _isPullRight = true;
          });
        }),
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: PageView.builder(

                        // allowImplicitScrolling: true,
                        onPageChanged: changeDot,
                        itemCount: widget.nft.chapterDetailList.length,
                        controller: _controller,
                        itemBuilder: (ctx, index) {
                          return ChapterSlidePage(
                            description:
                                widget.nft.chapterDetailList[index].text,
                            description2:
                                widget.nft.chapterDetailList[index].text2,
                            image: widget.nft.chapterDetailList[index].image,
                            image2: widget.nft.chapterDetailList[index].image2,
                            starNote:
                                widget.nft.chapterDetailList[index].starnote,
                            starNote2:
                                widget.nft.chapterDetailList[index].starnote2,
                            titleSection: widget
                                .nft.chapterDetailList[index].titleSection,
                            benefits:
                                widget.nft.chapterDetailList[index].benefits,
                            tableList:
                                widget.nft.chapterDetailList[index].tableList,
                            //widget.nft.chapterDetailList[index].titleSection,
                          );
                        }),
                  ),
                ),
              ],
            ),
            _isPullRight == false
                ? Center(
                    child: Lottie.asset('assets/lottie/swipe-left.json'),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
