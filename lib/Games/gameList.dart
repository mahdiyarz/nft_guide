import 'package:flutter/material.dart';
import 'package:nft_guide/Games/gameModel.dart';
import 'package:nft_guide/Games/gameSecondCard.dart';

class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ویژه نامه بازی'),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Color.fromARGB(255, 43, 43, 43),
        ),
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        body: Container(
          child: ListView(
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 61, 61, 61),
                        ),
                        height: 400,
                      ),
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/gamepic.webp',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'هفت روش برای درآمد بیشتر از بازی های بلاکچین',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        bottom: 40,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => ))
                },
              ),
              SizedBox(
                height: 25,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
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
