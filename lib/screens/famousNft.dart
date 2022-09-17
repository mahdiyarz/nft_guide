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
        backgroundColor: Color.fromARGB(168, 0, 0, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                child: Image.asset(data.image),
                tag: data.name,
              ),
              Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.text,
                    textDirection: TextDirection.rtl,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 171, 171, 171),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                )),
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 39, 39, 39),
              )
            ],
          ),
        ),
      ),
      onTap: () => Navigator.pop(context),
    );
  }
}
