import 'package:flutter/material.dart';
import 'package:nft_guide/widgets/drag_down_animation.dart';
import 'package:nft_guide/widgets/drag_right_animation.dart';
import 'package:provider/provider.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

import '../models/nftModel.dart';
import '../provider/nft_provider.dart';
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
    double _width = MediaQuery.of(context).size.width;
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
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragUpdate: widget.nft.chapterDetailList.length > 1
            ? (details) {
                if (details.delta.dx < 0) {
                  Provider.of<NFTProvider>(context, listen: false)
                      .dragHorizontal();
                  // print('Drag: $details');
                }
              }
            : (details) {},
        onVerticalDragUpdate: (details) {
          if (details.delta.dy < 0) {
            Provider.of<NFTProvider>(context, listen: false).dragVerticalDown();
            // print('Drag: $details');
          }
        },
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: PageView.builder(
                        // physics: NeverScrollableScrollPhysics(),

                        // allowImplicitScrolling: true,
                        onPageChanged: changeDot,
                        itemCount: widget.nft.chapterDetailList.length,
                        controller: _controller,
                        itemBuilder: (ctx, index) {
                          // _controller.page == 2 ? print('object') : SizedBox();
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
                            resourceInfo: widget
                                .nft.chapterDetailList[index].resourceInfo,
                            //widget.nft.chapterDetailList[index].titleSection,
                          );
                        }),
                  ),
                ),
              ],
            ),
            DragDownAnimation(),
            Positioned(
              left: _width / 3,
              bottom: 0,
              child: SizedBox(
                width: _width / 3,
                child: DragRightAnimation(
                    chapterDatailLenght: widget.nft.chapterDetailList.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
