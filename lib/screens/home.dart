import 'package:flutter/material.dart';
import '../screens/chapterDetail.dart';
import '../models/nftModel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NFTراهنمای ',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: const Color(0xff707070),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                vertical: 2,
              ),
              elevation: 2,
              child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(nftsData[index].image),
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
                      Text(
                        nftsData[index].chapter,
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
                            nftsData[index].title,
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
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (ctx) => _buildBottomSheet(ctx),
          ),
          child: const Icon(
            Icons.alternate_email_rounded,
            color: Colors.white70,
          ),
          elevation: 8,
          backgroundColor: Color(0xff707070),
          mini: true,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }

  Container _buildBottomSheet(BuildContext context) {
    return Container(
      color: Color(0xff707070),
      height: 150,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(180, 218, 75, 243),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'طراحی و توسعه',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white70,
              ),
            ),
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 80,
            ),
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(180, 218, 75, 243),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          'مهدیار ارباب زی',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          'm.arbabzi@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(180, 218, 75, 243),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          'سینا زره پوش',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          'sina.zrp@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
