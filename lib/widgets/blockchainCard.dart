import 'package:flutter/material.dart';
import 'package:nft_guide/models/nftModel.dart';
import 'package:nft_guide/screens/chapterPage.dart';

Widget BlocChainCard(BuildContext context, int index) {
  var width = MediaQuery.of(context).size.width;
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => ChapterPage(nft: nftsData[index])));
    },
    child: Container(
      child: Center(
          child: Text(
        nftsData[index].title,
        style: TextStyle(
            color: Color.fromARGB(255, 190, 189, 189),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Vazir'),
      )),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 0, 0, 0),
          image: DecorationImage(
              image: AssetImage(nftsData[index].image),
              fit: BoxFit.cover,
              opacity: 0.4)),
      width: width / 1.8,
    ),
  );
}
