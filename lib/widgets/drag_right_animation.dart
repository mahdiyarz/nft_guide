import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../provider/nft_provider.dart';

class DragRightAnimation extends StatefulWidget {
  final int chapterDatailLenght;
  DragRightAnimation({required this.chapterDatailLenght, Key? key})
      : super(key: key);

  @override
  State<DragRightAnimation> createState() => _DragRightAnimationState();
}

class _DragRightAnimationState extends State<DragRightAnimation> {
  @override
  Widget build(BuildContext context) {
    Provider.of<NFTProvider>(context).isFirstPull();
    return Provider.of<NFTProvider>(context, listen: false).isPullRight ==
                false &&
            widget.chapterDatailLenght > 1
        ? Center(
            child: Lottie.asset('assets/lottie/swipe-left.json'),
          )
        : SizedBox();
  }
}
