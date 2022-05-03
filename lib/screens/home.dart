import 'package:flutter/material.dart';
import '../screens/chapterDetail.dart';
import '../models/nftModel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
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
                  horizontal: 10,
                  vertical: 5,
                ),
                // color: Colors.amberAccent,
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(nftsData[index].image),
                        fit: BoxFit.cover,
                        opacity: 200,
                      ),
                      color: Colors.indigo[300],
                      // gradient: const LinearGradient(
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   colors: [
                      //     Colors.green,
                      //     Colors.lightGreen,
                      //   ],
                      // ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nftsData[index].chapter,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
          }),
    );
  }
}
