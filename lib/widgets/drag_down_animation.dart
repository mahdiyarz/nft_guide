import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/nft_provider.dart';

class DragDownAnimation extends StatefulWidget {
  DragDownAnimation({Key? key}) : super(key: key);

  @override
  State<DragDownAnimation> createState() => _DragDownAnimationState();
}

class _DragDownAnimationState extends State<DragDownAnimation> {
  @override
  Widget build(BuildContext context) {
    Provider.of<NFTProvider>(context).isFirstDrag();
    double _width = MediaQuery.of(context).size.width;
    return Provider.of<NFTProvider>(context, listen: false).isDrag == false
        ? Positioned(
            bottom: 25,
            left: 25,
            child: Container(
                height: _width / 2,
                child: Lottie.asset('assets/lottie/swipe-up.json')),
          )
        : SizedBox();
  }
}
