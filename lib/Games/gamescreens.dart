import 'package:flutter/material.dart';

import '../models/gameModel.dart';

class GameThumb extends StatefulWidget {
  // its the page that introduce games
  final Game game;

  GameThumb(this.game, {Key? key}) : super(key: key);

  @override
  State<GameThumb> createState() => _GameThumbState();
}

class _GameThumbState extends State<GameThumb> {
  Color newIMDBblue = Color.fromARGB(255, 87, 153, 239);
  bool isReadmore = false;

  int index2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
          toolbarHeight: 35,
          backgroundColor: Color.fromARGB(255, 39, 39, 39),
          elevation: 0), */
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.game.image[index2]),
                              fit: BoxFit.cover)),
                    ),
                    /* const Icon(
                      (Icons.play_circle_outline),
                      size: 100,
                      color: Colors.white,
                    ) */
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(6, 70, 66, 66),
                    Color.fromARGB(255, 39, 39, 39),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  height: 80,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  isReadmore
                      ? SizedBox(
                          width: 0.0,
                        )
                      : Card(
                          color: Color.fromARGB(255, 39, 39, 39),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular((10))),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 4,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(widget.game.image[4]))),
                            ),
                          ),
                        ),
                  isReadmore
                      ? SizedBox(
                          width: 0.0,
                        )
                      : SizedBox(
                          width: 20,
                        ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.game.year} . ${widget.game.genre}'
                            .toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: newIMDBblue),
                      ),
                      Text(
                        widget.game.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Color.fromARGB(255, 142, 183, 65),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color.fromARGB(255, 171, 171, 171),
                              fontFamily: 'Vazir',
                            ),
                            children: [
                              TextSpan(
                                text: widget.game.alldescription,
                              ),
                            ]),
                        maxLines: isReadmore ? null : 4,
                        overflow: isReadmore
                            ? TextOverflow.visible
                            : TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                      InkWell(
                        child:
                            Text(isReadmore ? 'پنهان کردن متن' : 'ادامه مطلب',
                                style: TextStyle(
                                  color: newIMDBblue,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Vazir',
                                )),
                        onTap: () {
                          setState(() {
                            isReadmore = !isReadmore;
                          });
                        },
                      )
                    ],
                  ))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    const Divider(
                      color: Color.fromARGB(255, 68, 67, 67),
                      thickness: 1,
                      height: 20,
                      endIndent: 5,
                      indent: 5,
                    ),
                    gameFields(field: 'Platforms', value: widget.game.platform),
                    SizedBox(
                      height: 3.5,
                    ),
                    gameFields(
                        field: 'Developer', value: widget.game.developer),
                    SizedBox(
                      height: 3.5,
                    ),
                    gameFields(field: 'Mode', value: widget.game.mode),
                    const Divider(
                      color: Color.fromARGB(255, 68, 67, 67),
                      thickness: 1,
                      height: 20,
                      endIndent: 5,
                      indent: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Posters'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 142, 183, 65)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 170,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (Contex, index) => ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: InkWell(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          height: 160,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      widget.game.image[index]),
                                                  fit: BoxFit.cover)),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            index2 = index;
                                          });
                                        },
                                      ),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 8,
                                    ),
                                itemCount: widget.game.image.length),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white70,
          ),
          elevation: 8,
          backgroundColor: Color.fromARGB(255, 197, 161, 70),
          mini: true,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }

  Widget gameFields({required String field, required String value}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$field : ',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 197, 161, 70),
          ),
        ),
        Expanded(
            child: Text(value,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: newIMDBblue)))
      ],
    );
  }
}
