import 'package:flutter/material.dart';

import 'gameModel.dart';

class GameThumb extends StatefulWidget {
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
      backgroundColor: Color(0xfff5f5f5),
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
                      gradient: LinearGradient(
                          colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
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
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                      Text.rich(
                        TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            children: [
                              TextSpan(text: widget.game.alldescription),
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
                                  fontWeight: FontWeight.w900,
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
                              fontSize: 14, fontWeight: FontWeight.w500),
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
