import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:nft_guide/models/carouseModel.dart';

class FamousNFT extends StatelessWidget {
  final CarouselModel data;
  FamousNFT({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(73, 0, 0, 0),
        body: Center(
          child: Hero(
            child: Image.asset(data.image),
            tag: data.name,
          ),
        ),
      ),
      onTap: () => Navigator.pop(context),
    );
  }
}
