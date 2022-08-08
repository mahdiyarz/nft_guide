import 'package:flutter/material.dart';
import 'package:nft_guide/screens/chapterPage.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import '../models/nftModel.dart';

class NftListView extends StatelessWidget {
  int index;
  NativeAdData? ad2;
  NftListView({Key? key, required this.index, this.ad2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => ChapterPage()),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 2,
        ),
        elevation: 2,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(nftsData[index].image),
                fit: BoxFit.cover,
                opacity: 140,
              ),
              color: const Color.fromARGB(255, 34, 33, 33),
              // borderRadius: BorderRadius.circular(15),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nftsData[index].chapter,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.w700),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      nftsData[index].title,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          fontFamily: 'Vazir'),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
