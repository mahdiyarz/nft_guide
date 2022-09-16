import 'package:flutter/material.dart';
import 'package:nft_guide/widgets/custom_table.dart';

class ChapterSlidePage extends StatelessWidget {
  // its a slide screen in article page screen
  final String description;
  final String? image;
  final String? starNote;
  final String? image2;
  final String? description2;
  final String? starNote2;
  final String? titleSection;
  final List<String>? tableList;
  final List<String>? benefits;

  ChapterSlidePage({
    Key? key,
    this.image,
    required this.description,
    this.starNote,
    this.description2,
    this.image2,
    this.starNote2,
    this.titleSection,
    this.tableList,
    this.benefits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        body: SingleChildScrollView(
          child: Column(
            children: [
              image != null
                  ? Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: _width,
                          height: _width / 1.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image.toString()),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color.fromARGB(6, 70, 66, 66),
                                Color.fromARGB(255, 39, 39, 39),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          height: 80,
                        ),
                      ],
                    )
                  : SizedBox(),
              titleSection != null
                  ? Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Center(
                            child: FittedBox(
                          fit: BoxFit.cover,
                          child: Text(
                            titleSection.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 142, 183, 65),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    )
                  : SizedBox(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 15,
                  left: 15,
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(description,
                        style: TextStyle(
                          color: Color.fromARGB(255, 171, 171, 171),
                          fontSize: 18.5,
                          fontWeight: FontWeight.normal,
                          height: 1.55,
                          fontFamily: 'Vazir',
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 52, 56, 59),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              starNote != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 15,
                        left: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.event_note,
                            color: Colors.amberAccent,
                          ),
                          Flexible(
                            child: Container(
                              width: _width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(starNote.toString(),
                                    softWrap: true,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 227, 225),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 115, 102, 68),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      topLeft: Radius.circular(3))),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              tableList != null
                  ? Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          right: 15,
                          left: 15,
                        ),
                        child: CustomTable(
                          rowTitleFirst: 'بلاکچین',
                          rowContentFirst: tableList![0],
                          rowTitleSeconde: 'گس فی',
                          rowContentSeconde: tableList![1],
                          rowTitleThird: 'اندازه ی کالکشن',
                          rowContentThird: tableList![2],
                          rowTitleFourth: 'حجم معاملات',
                          rowContentFourth: tableList![3],
                        ),
                      ),
                    )
                  : SizedBox(),
              benefits != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 15,
                        left: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(right: _width / 35),
                            child: Text('نکات مثبت',
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: benefits!.length,
                                    itemBuilder: (context, index) =>
                                        Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.check_circle,
                                            color: Color.fromARGB(
                                                255, 142, 183, 65),
                                          ),
                                          SizedBox(width: 8),
                                          Flexible(
                                            child: Text(benefits![index],
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 171, 171, 171),
                                                  fontSize: 18.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.55,
                                                  fontFamily: 'Vazir',
                                                ),
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.justify),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 52, 56, 59),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
              image2 != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 15,
                        left: 15,
                      ),
                      child: Container(
                        width: _width,
                        height: _width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(image2.toString()),
                                fit: BoxFit.fill)),
                      ),
                    )
                  : SizedBox(),
              description2 != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 15,
                        left: 15,
                      ),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(description2.toString(),
                              style: TextStyle(
                                color: Color.fromARGB(255, 171, 171, 171),
                                fontSize: 18.5,
                                fontWeight: FontWeight.normal,
                                height: 1.55,
                                fontFamily: 'Vazir',
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 52, 56, 59),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  : SizedBox(),
              starNote2 != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 15,
                        left: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Container(
                              width: _width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(starNote2.toString(),
                                    softWrap: true,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 227, 225),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 115, 102, 68),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(3))),
                            ),
                          ),
                          Icon(
                            Icons.event_note,
                            color: Colors.amberAccent,
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
