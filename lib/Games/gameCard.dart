import 'package:flutter/material.dart';
import 'package:nft_guide/Games/gameList.dart';

class GameCard extends StatelessWidget {
  // this is the card that shown in the first screen of the app
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => GameList()));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(
          vertical: 2,
        ),
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/gamepic.webp'),
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
                  'فصل دهم',
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
                      'چگونه از بازی های NFT درآمد کسب کنید',
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
