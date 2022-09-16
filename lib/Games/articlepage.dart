import 'package:flutter/material.dart';
import '../Games/articledatamodel.dart';
import '../Games/slidepage.dart';

class ArticlePage extends StatefulWidget {
  ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage>
    with SingleTickerProviderStateMixin {
  PageController _controller = PageController(
    initialPage: 0,
  );
  void changeDot(int x) {
    setState(() {
      dotindex = x.toInt();
      _dotcontroller.animateTo(dotindex);
    });
  }

  late final TabController _dotcontroller;
  int dotindex = 0;
  void initState() {
    super.initState();
    _dotcontroller = TabController(
      length: articleData.length,
      initialIndex: dotindex,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Color.fromARGB(255, 39, 39, 39),
          child: Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Color.fromARGB(255, 50, 55, 61),
            ),
            child: Center(
              child: TabPageSelector(
                selectedColor: Color.fromARGB(255, 142, 183, 65),
                controller: _dotcontroller,
              ),
            ),
            height: 30,
          )),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      appBar: AppBar(
        title: Text(
          'هفت روش برای درآمد بیشتر',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        toolbarHeight: 40,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: PageView.builder(

            // allowImplicitScrolling: true,
            onPageChanged: changeDot,
            itemCount: articleData.length,
            controller: _controller,
            itemBuilder: (ctx, index) {
              return SlidePageWidget(
                titleCount: articleData[index].titleCount,
                description: articleData[index].text,
                image: articleData[index].image,
                title: articleData[index].title,
                starNote: articleData[index].starnote,
                description2: articleData[index].text2,
                image2: articleData[index].image2,
                starNote2: articleData[index].starnote2,
              );
            }),
      ),
    );
  }
}
