import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/nft_provider.dart';

class ClickAnimation extends StatefulWidget {
  final Widget clickableWidget;
  ClickAnimation({required this.clickableWidget, Key? key}) : super(key: key);

  @override
  State<ClickAnimation> createState() => _ClickAnimationState();
}

class _ClickAnimationState extends State<ClickAnimation> {
  @override
  Widget build(BuildContext context) {
    Provider.of<NFTProvider>(context).isFirstClick();
    return Stack(children: [
      GestureDetector(
        onTapDown: (details) =>
            Provider.of<NFTProvider>(context, listen: false).clickOnChapter(),
        child: widget.clickableWidget,
      ),
      Provider.of<NFTProvider>(context, listen: false).isClick == false
          ? Lottie.asset('assets/lottie/click-animation.json')
          : SizedBox(),
    ]);
  }
}
