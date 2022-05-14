import 'package:flutter/material.dart';

class ChapterDetail extends StatelessWidget {
  String title, image;
  List<String> descriptions;
  ChapterDetail({
    Key? key,
    required this.title,
    required this.descriptions,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff707070),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              padding: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 25.0,
                      color: Colors.white70,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 45,
              endIndent: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  ...descriptions
                      .map((e) => Text(
                            e,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ))
                      .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FloatingActionButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.home,
            color: Colors.white70,
          ),
          elevation: 8,
          backgroundColor: const Color.fromARGB(180, 218, 75, 243),
          mini: true,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
