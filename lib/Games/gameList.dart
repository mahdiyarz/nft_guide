import 'package:flutter/material.dart';
import 'package:nft_guide/Games/gameModel.dart';
import 'package:nft_guide/Games/gameSecondCard.dart';

import 'articlepage.dart';

class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);
  // this is the page that shown when u click in vizhe name
  //the first screen of vizhe name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ویژه نامه بازی',
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
        body: Container(
          child: ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 52, 56, 59),
                        ),
                        height: 340,
                      ),
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/gamepic.webp',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              'چگونه از بازی های NFT درآمد کسب کنیم',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Vazir',
                                  color: Color.fromARGB(255, 171, 171, 171)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        bottom: 15,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ArticlePage(),
                  ));
                },
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                color: Color.fromARGB(255, 219, 187, 88),
                child: Column(
                  children: [
                    Text(
                      'معرفی بازی ها ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'برای مشاهده جزئیات بر روی عکس بازی کلیک کنید',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'Vazir'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GameSecondCard(game: gameList[0]),
              GameSecondCard(game: gameList[1]),
              GameSecondCard(game: gameList[2]),
              GameSecondCard(game: gameList[3]),
              GameSecondCard(game: gameList[4]),
              GameSecondCard(game: gameList[5]),
              GameSecondCard(game: gameList[6]),
              GameSecondCard(game: gameList[7]),
            ],
          ),
        ));
  }
}
