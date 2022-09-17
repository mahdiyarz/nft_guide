import 'package:flutter/material.dart';

import 'package:nft_guide/models/gameModel.dart';
import 'package:nft_guide/Games/gamescreens.dart';

class GameSecondCard extends StatelessWidget {
  // widget of the card of game list
  final Game game;
  GameSecondCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => GameThumb(game)));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 2,
        ),
        elevation: 2,
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(game.image[0]),
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
                FittedBox(
                  fit: BoxFit.fill,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      game.name,
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

    /* Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 71, 71, 71),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 75, 73, 73),
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 20.0,
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    height: 100,
                    width: MediaQuery.of(context).size.width * 1 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        game.image[0],
                        fit: BoxFit.cover,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    ); */
  }
}
