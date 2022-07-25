import 'package:nft_guide/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  addBoolToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('firsttime', false);
  }

  void _onIntroEnd(context) {
    addBoolToSF();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/welcomefull.gif',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontSize: 19.0,
      color: Color.fromARGB(255, 171, 171, 171),
    );

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 171, 171, 171),
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color.fromARGB(255, 4, 2, 4),
      // Color.fromARGB(255, 32, 32, 32),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color.fromARGB(255, 4, 2, 4),
      /*  globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('welcomehead.png', 100),
          ),
        ),
      ), */
      globalFooter: SizedBox(height: 40),
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('welcome1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: Image(image: AssetImage('assets/images/welcome2.gif')),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: _buildImage('fdfdfd.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Full Screen Page",
          body:
              "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
              pageColor: Color.fromARGB(103, 0, 0, 0),
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: true,
              bodyFlex: 2,
              imageFlex: 3,
              bodyTextStyle: bodyStyle.copyWith(color: Colors.white)),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showBackButton: false,
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,

      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back_ios,
          color: Color.fromARGB(255, 142, 183, 65)),
      skip: const Text('رد کردن',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color.fromARGB(255, 171, 171, 171))),
      next: const Icon(Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 142, 183, 65)),
      done: const Text('پایان',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color.fromARGB(255, 142, 183, 65))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        activeColor: Color.fromARGB(255, 142, 183, 65),
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 171, 171, 171),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromARGB(255, 32, 32, 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
