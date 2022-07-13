import 'package:flutter/material.dart';
import 'package:nft_guide/Games/articledatamodel.dart';
import 'package:nft_guide/Games/slidepage.dart';

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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
        title: Text('هفت روش برای درآمد بیشتر '),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: PageView.builder(

                  // allowImplicitScrolling: true,
                  onPageChanged: changeDot,
                  itemCount: articleData.length,
                  controller: _controller,
                  itemBuilder: (ctx, index) {
                    return SlidePageWidget(
                      describtion: articleData[index].text,
                      image: articleData[index].image,
                      title: articleData[index].title,
                      starnote: articleData[index].starnote,
                      describtion2: articleData[index].text2,
                      image2: articleData[index].image2,
                      starnote2: articleData[index].starnote2,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
