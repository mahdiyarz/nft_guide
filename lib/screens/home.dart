import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Games/gameModel.dart';
import '../screens/chapterPage.dart';
import '../widgets/divider.dart';
import '../Games/gameCard.dart';
import '../Games/gamescreens.dart';
import '../models/nftModel.dart';
import '../widgets/blockchainCard.dart';
import '../widgets/carouselCard.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/adBanner.dart';
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
  String zoneIdBannerMid = '6278076347a6dd582add9bab';
  String zoneIdBannerDown = '62795b1847a6dd582add9c56';
  NativeAdData? bannerDataMid;
  NativeAdData? bannerDataDown;
  NativeAdData? ad2;
  bool _bool = true;
  PageController _pageController =
      PageController(viewportFraction: 0.85, initialPage: 1);
  Random random = new Random();
  late int randomChapterIndex;
  late int randomGameIndex;
  late int randomChapterIndex2;
  late int randomGameIndex2;

  var activePage = 1;
  var pageIndex = 1;

  bool _isClick = true;
  Future isFirstClick() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstClick = prefs.getBool('firstClick') ?? true;

    if (firstClick) {
      await prefs.setBool('firstClick', false);
      setState(() {
        _isClick = false;
      });
    } else {
      setState(() {
        _isClick = true;
      });
    }
  }

  Future clickOnChapter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstClick', false);
  }

  bool _isDrag = true;
  Future isFirstDrag() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstDrag = prefs.getBool('firstDrag') ?? true;

    if (firstDrag) {
      await prefs.setBool('firstdrag', false);
      setState(() {
        _isDrag = false;
      });
    } else {
      setState(() {
        _isDrag = true;
      });
    }
  }

  Future dragVerticalDown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstDrag', false);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

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
    isFirstDrag();
    isFirstClick();

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
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (pageIndex < 5) {
        pageIndex++;
      } else {
        pageIndex = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          pageIndex,
          duration: Duration(milliseconds: 600),
          curve: Curves.easeIn,
        );
      }
    });
    createRandomNumber();
    super.initState();
  }

  adloadmid() async {
    TapsellPlus.instance.requestNativeAd(zoneIdBannerMid).then((responseId) {
      if (responseId.isNotEmpty) {
        TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
          setMIdData(nativeAd);
        }, onError: (errorPayload) {
          // Error when getting ad info
        });
      }
    }).catchError((error) {
      // Error requesting for an ad
    });
  }

  adloaddown() async {
    TapsellPlus.instance.requestNativeAd(zoneIdBannerDown).then((responseId) {
      if (responseId.isNotEmpty) {
        TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
          setDownData(nativeAd);
        }, onError: (errorPayload) {
          // Error when getting ad info
        });
      }
    }).catchError((error) {
      // Error requesting for an ad
    });
  }

  adloadsecondpage() async {
    TapsellPlus.instance
        .requestNativeAd('627ff1c9faefa477a635d931')
        .then((responseId) {
      if (responseId.isNotEmpty) {
        TapsellPlus.instance.showNativeAd(responseId, onOpened: (nativeAd) {
          setAd2Data(nativeAd);
          print(nativeAd.title);
        }, onError: (errorPayload) {
          // Error when getting ad info
        });
      }
    }).catchError((error) {
      // Error requesting for an ad
    });
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            backgroundColor: Color.fromARGB(255, 115, 102, 68),
            title: Text(
              'آیا می خواهید از برنامه خارج شوید؟',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Color.fromARGB(255, 142, 183, 65),
                ),
                onPressed: () => Navigator.pop(context, false),
                child: Text('نه هنوز'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 142, 183, 65),
                ),
                onPressed: () => Navigator.pop(context, true),
                child: Text('بله'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 142, 183, 65).withOpacity(.6),
                ),
                onPressed: () => Navigator.pop(context, true),
                child: Text('قهوه تون با من!'),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        if (_bool == false) {
          _controller!.reverse();
          return false;
        } else {
          final shouldPop = await showWarning(context);
          return shouldPop ?? false;
        }
      },
      child: Scaffold(
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
                  _bool == true ? Icons.menu : Icons.home,
                  size: _width / 16,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
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
            GestureDetector(
              onVerticalDragDown: (details) {
                dragVerticalDown();
                setState(() {
                  _isDrag = true;
                });
              },
              child: ListView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 230,
                    child: PageView(
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      children: [
                        InkWell(
                          child: CarouselCard(
                              pagePosition: 0,
                              activePage: activePage,
                              image: nftsData[randomChapterIndex].image,
                              text: nftsData[randomChapterIndex].title),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ChapterPage(
                                nft: nftsData[randomChapterIndex],
                                ad2: ad2,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                            child: CarouselCard(
                                pagePosition: 1,
                                activePage: activePage,
                                image: gameList[randomGameIndex].image[0],
                                text: gameList[randomGameIndex].name),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      GameThumb(gameList[randomGameIndex])));
                            }),
                        InkWell(
                            child: CarouselCard(
                                pagePosition: 2,
                                activePage: activePage,
                                image: 'assets/images/buy-coffee.jpg',
                                text: 'ما رو به صرف قهوه مهمون کن'),
                            onTap: () {}),
                        InkWell(
                          child: CarouselCard(
                              pagePosition: 3,
                              activePage: activePage,
                              image: nftsData[randomChapterIndex2].image,
                              text: nftsData[randomChapterIndex2].title),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ChapterPage(
                                nft: nftsData[randomChapterIndex2],
                                ad2: ad2,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                            child: CarouselCard(
                                pagePosition: 4,
                                activePage: activePage,
                                image: gameList[randomGameIndex2].image[0],
                                text: gameList[randomGameIndex2].name),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      GameThumb(gameList[randomGameIndex2])));
                            }),
                        if (bannerDataDown != null)
                          InkWell(
                              child: CarouselCard(
                                  pagePosition: 5,
                                  activePage: activePage,
                                  image: bannerDataDown!.landscapeImageUrl
                                      .toString(),
                                  text: bannerDataDown!.title.toString()),
                              onTap: () => TapsellPlus.instance
                                  .nativeBannerAdClicked(
                                      bannerDataDown!.responseId.toString())),
                      ],
                    ),
                  ),
                  /* CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ), */
/* 
                  DividerNew(context, 'ویژه نامه ', Icons.not_accessible),
                  GameCard(),
                  GameCard(), */
                  DividerNew(
                      context, 'پیش نیاز :مفاهیم بلاکچین', Icons.abc_rounded),
                  Container(
                    height: MediaQuery.of(context).size.width / 2.5,
                    color: Color.fromARGB(40, 8, 8, 8),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return BlocChainCard(context);
                      },
                      itemCount: 4,
                    ),
                  ),
                  DividerNew(context, 'NFT آشنایی با ', Icons.abc_rounded),
                  Stack(children: [
                    GestureDetector(
                      onTapDown: (details) {
                        clickOnChapter();
                        setState(() {
                          _isClick = true;
                        });
                      },
                      onTapUp: (details) {
                        clickOnChapter();
                        setState(() {
                          _isClick = true;
                        });
                      },
                      child: NftListView(index: 0, ad2: ad2),
                    ),
                    _isClick == false
                        ? Lottie.asset('assets/lottie/click-animation.json')
                        : SizedBox(),
                  ]),
                  NftListView(index: 1, ad2: ad2),
                  NftListView(index: 2, ad2: ad2),
                  (bannerDataMid != null)
                      ? AdBanner(data: bannerDataMid!)
                      : const SizedBox(
                          height: 0.1,
                        ),
                  NftListView(index: 3, ad2: ad2),
                  NftListView(index: 4, ad2: ad2),
                  /*  NftListView(index: 5, ad2: ad2),
                    NftListView(index: 6, ad2: ad2),
                    NftListView(index: 7, ad2: ad2),
                    NftListView(index: 8, ad2: ad2),
                    NftListView(index: 9, ad2: ad2),
                    NftListView(index: 10, ad2: ad2),
                    NftListView(index: 11, ad2: ad2), */
                  (bannerDataDown != null)
                      ? AdBanner(data: bannerDataDown!)
                      : const SizedBox(
                          height: 0.1,
                        ),
                ],
              ),
            ),
            CustomDrawer(
              isBool: _bool,
              animation1: _animation1,
              animation2: _animation2,
              animation3: _animation3,
              controller: _controller,
            ),
            _isDrag == false
                ? Positioned(
                    bottom: 25,
                    left: 25,
                    child: Container(
                        height: _width / 2,
                        child: Lottie.asset('assets/lottie/swipe-up.json')),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  void createRandomNumber() {
    randomChapterIndex = random.nextInt(nftsData.length);
    randomGameIndex = random.nextInt(gameList.length);
    randomChapterIndex2 = random.nextInt(nftsData.length);
    randomGameIndex2 = random.nextInt(gameList.length);
    while (randomChapterIndex == randomChapterIndex2) {
      randomChapterIndex2 = random.nextInt(nftsData.length);
    }
    while (randomGameIndex == randomGameIndex2) {
      randomGameIndex2 = random.nextInt(gameList.length);
    }
    print(randomChapterIndex2);
  }
}
