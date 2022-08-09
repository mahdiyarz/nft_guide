import 'package:flutter/material.dart';

import 'package:nft_guide/Games/articledatamodel.dart';
import 'package:nft_guide/models/nftModel.dart';
import 'package:nft_guide/screens/chapterSlidePage.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

class ChapterPage extends StatefulWidget {
  Nfts nft;
  NativeAdData? ad2;

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
    super.initState();
    _dotcontroller = TabController(
      length: widget.nft.chapterDetailList.length,
      initialIndex: dotindex,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
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
          )),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      appBar: AppBar(
        title: Text(
          widget.nft.title,
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
      body: Column(
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
                        describtion: widget.nft.chapterDetailList[index].text,
                        describtion2: widget.nft.chapterDetailList[index].text2,
                        image: widget.nft.chapterDetailList[index].image,
                        image2: widget.nft.chapterDetailList[index].image2,
                        starnote: widget.nft.chapterDetailList[index].starnote,
                        starnote2:
                            widget.nft.chapterDetailList[index].starnote2,
                        titleSection: 'gjhgkjhkj'
                        //widget.nft.chapterDetailList[index].titleSection,
                        );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
