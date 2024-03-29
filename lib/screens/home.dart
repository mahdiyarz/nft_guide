import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_guide/widgets/chapter1Card.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/carouseModel.dart';
import '../screens/famousNft.dart';
import '../widgets/chapter2Card.dart';
import '../widgets/chapter7Card.dart';
import '../widgets/divider.dart';
import '../Games/gameCard.dart';
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
  final List<int> myChaptersId = const [
    011,
    012,
    013,
    014,
    021,
    031,
    032,
    033,
    034,
    041,
    051,
    061,
    071,
    081,
    082,
    083,
  ];
  AnimationController? _controller;
  Animation<double>? _animation1;
  Animation<double>? _animation2;
  Animation<double>? _animation3;
  String zoneIdBannerMid = '6278076347a6dd582add9bab';
  String zoneIdBannerDown = '62795b1847a6dd582add9c56';
  NativeAdData? bannerDataMid;
  NativeAdData? bannerDataDown;

  bool _bool = true;
  PageController _pageController =
      PageController(viewportFraction: 0.85, initialPage: 1);

  var activePage = 1;
  var pageIndex = 1;

  final Uri _url = Uri.parse('https://www.coffeete.ir/ParsString');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
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
    Timer.periodic(Duration(seconds: 8), (Timer timer) {
      if (pageIndex < 7) {
        pageIndex++;
      } else {
        pageIndex = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          pageIndex,
          duration: Duration(milliseconds: 800),
          curve: Curves.easeIn,
        );
      }
    });

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

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            actionsOverflowAlignment: OverflowBarAlignment.center,
            actionsOverflowDirection: VerticalDirection.up,
            backgroundColor: Color.fromARGB(255, 115, 102, 68),
            title: Text(
              'آیا می خواهید از برنامه خارج شوید؟',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: Color.fromARGB(255, 142, 183, 65),
                            ),
                            onPressed: () => Navigator.pop(context, false),
                            child: FittedBox(
                                fit: BoxFit.scaleDown, child: Text('نه هنوز')),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 142, 183, 65),
                            ),
                            onPressed: () => Navigator.pop(context, true),
                            child: FittedBox(
                                fit: BoxFit.scaleDown, child: Text('بله')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.local_cafe_outlined),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary:
                          Color.fromARGB(255, 142, 183, 65).withOpacity(.6),
                    ),
                    onPressed: _launchUrl,
                    label: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'قهوه تون با من!',
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      });

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
            ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                DividerNew(context, 'NFT های معروف', 'Icons.abc', true),
                Container(
                  height: 230,
                  child: PageView(
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                        pageIndex = page;
                      });
                    },
                    children: [
                      InkWell(
                          child: CarouselCard(
                              tag: carouselList[0].name,
                              pagePosition: 0,
                              activePage: activePage,
                              image: carouselList[0].image,
                              text: carouselList[0].name),
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                opaque: false, // set to false
                                pageBuilder: (_, __, ___) =>
                                    FamousNFT(data: carouselList[0]),
                              ),
                            );
                          }),
                      InkWell(
                          child: CarouselCard(
                              tag: carouselList[1].name,
                              pagePosition: 1,
                              activePage: activePage,
                              image: carouselList[1].image,
                              text: carouselList[1].name),
                          onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false, // set to false
                                  pageBuilder: (_, __, ___) =>
                                      FamousNFT(data: carouselList[1]),
                                ),
                              )),
                      InkWell(
                          child: CarouselCard(
                              tag: 'null',
                              pagePosition: 2,
                              activePage: activePage,
                              image: 'assets/images/buy-coffee.jpg',
                              text: 'ما رو به صرف قهوه مهمون کن'),
                          onTap: _launchUrl),
                      InkWell(
                          child: CarouselCard(
                              tag: carouselList[2].name,
                              pagePosition: 3,
                              activePage: activePage,
                              image: carouselList[2].image,
                              text: carouselList[2].name),
                          onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false, // set to false
                                  pageBuilder: (_, __, ___) =>
                                      FamousNFT(data: carouselList[2]),
                                ),
                              )),
                      InkWell(
                          child: CarouselCard(
                              tag: carouselList[3].name,
                              pagePosition: 4,
                              activePage: activePage,
                              image: carouselList[3].image,
                              text: carouselList[3].name),
                          onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false, // set to false
                                  pageBuilder: (_, __, ___) =>
                                      FamousNFT(data: carouselList[3]),
                                ),
                              )),
                      if (bannerDataDown != null)
                        InkWell(
                            child: CarouselCard(
                                tag: 'null',
                                pagePosition: 5,
                                activePage: activePage,
                                image: bannerDataDown!.landscapeImageUrl
                                    .toString(),
                                text: bannerDataDown!.title.toString()),
                            onTap: () => TapsellPlus.instance
                                .nativeBannerAdClicked(
                                    bannerDataDown!.responseId.toString())),
                      InkWell(
                          child: CarouselCard(
                              pagePosition: bannerDataDown != null ? 6 : 5,
                              activePage: activePage,
                              image: carouselList[4].image,
                              text: carouselList[4].name,
                              tag: carouselList[4].name),
                          onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false, // set to false
                                  pageBuilder: (_, __, ___) =>
                                      FamousNFT(data: carouselList[4]),
                                ),
                              )),
                      InkWell(
                          child: CarouselCard(
                              pagePosition: bannerDataDown != null ? 7 : 6,
                              activePage: activePage,
                              image: carouselList[5].image,
                              text: carouselList[5].name,
                              tag: carouselList[5].name),
                          onTap: () => Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false, // set to false
                                  pageBuilder: (_, __, ___) =>
                                      FamousNFT(data: carouselList[5]),
                                ),
                              )),
                    ],
                  ),
                ),
                DividerNew(context, 'پیش نیاز - مفاهیم بلاکچین',
                    'assets/Icon/blockchain.jpg', false),
                Container(
                  height: MediaQuery.of(context).size.width / 2.5,
                  color: Color.fromARGB(40, 8, 8, 8),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (context, index) {
                      // print('object $index');
                      if (nftsData[index].id == myChaptersId[0]) {
                        return BlocChainCard(context, index);
                      } else if (nftsData[index].id == myChaptersId[1]) {
                        return BlocChainCard(context, index);
                      } else if (nftsData[index].id == myChaptersId[2]) {
                        return BlocChainCard(context, index);
                      } else if (nftsData[index].id == myChaptersId[3]) {
                        return BlocChainCard(context, index);
                      } else {
                        return SizedBox();
                      }
                    },
                    itemCount: nftsData.length,
                  ),
                ),
                DividerNew(
                    context, 'NFT آشنایی با ', 'assets/Icon/NFT.jpg', false),
                Chapter1Card(),
                Chapter2Card(),
                NftListView(
                  index: nftsData
                      .indexWhere((element) => element.id == myChaptersId[9]),
                ),
                (bannerDataMid != null)
                    ? AdBanner(data: bannerDataMid!)
                    : const SizedBox(
                        height: 0.1,
                      ),
                NftListView(
                  index: nftsData
                      .indexWhere((element) => element.id == myChaptersId[10]),
                ),
                NftListView(
                  index: nftsData
                      .indexWhere((element) => element.id == myChaptersId[11]),
                ),
                NftListView(
                  index: nftsData
                      .indexWhere((element) => element.id == myChaptersId[12]),
                ),
                (bannerDataDown != null)
                    ? AdBanner(data: bannerDataDown!)
                    : const SizedBox(
                        height: 0.1,
                      ),
                Chapter7Card(),
                GameCard(),
              ],
            ),
            CustomDrawer(
              isBool: _bool,
              animation1: _animation1,
              animation2: _animation2,
              animation3: _animation3,
              controller: _controller,
            ),
            // DragDownAnimation(),
          ],
        ),
      ),
    );
  }
}
