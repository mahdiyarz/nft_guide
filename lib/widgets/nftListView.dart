import 'package:flutter/material.dart';

import '../screens/chapterDetail.dart';
import '../models/nftModel.dart';

class NftListView extends StatelessWidget {
  int index;

  NftListView({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ChapterDetail(
            title: nftsData[index].title,
            descriptions: nftsData[index].descriptions,
            image: nftsData[index].image,
          ),
        ),
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
            height: 175,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nftsData[index].chapter,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
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
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
