import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  final String rowTitleFirst, rowTitleSeconde, rowTitleThird, rowTitleFourth;
  final String rowContentFirst,
      rowContentSeconde,
      rowContentThird,
      rowContentFourth;
  const CustomTable(
      {required this.rowTitleFirst,
      required this.rowContentFirst,
      required this.rowTitleSeconde,
      required this.rowContentSeconde,
      required this.rowTitleThird,
      required this.rowContentThird,
      required this.rowTitleFourth,
      required this.rowContentFourth,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        tableRow(
            context, 0, rowTitleFirst, _width, rowContentFirst, 5, 5, 0, 0),
        tableRow(
            context, 2, rowTitleSeconde, _width, rowContentSeconde, 0, 0, 0, 0),
        tableRow(
            context, 2, rowTitleThird, _width, rowContentThird, 0, 0, 0, 0),
        tableRow(
            context, 2, rowTitleFourth, _width, rowContentFourth, 0, 0, 5, 5),
      ],
    );
  }

  Widget tableRow(
    BuildContext ctx,
    double topPadding,
    String rowTitle,
    double deviceWidth,
    String rowContent,
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 183, 65),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 3),
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    rowTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                alignment: Alignment.center,
                width: deviceWidth,
                // height: MediaQuery.of(ctx).size.height,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 52, 56, 59),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(topLeft),
                    bottomLeft: Radius.circular(bottomLeft),
                  ),
                ),
                child: Text(
                  rowContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 171, 171, 171),
                    fontSize: 17.5,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
