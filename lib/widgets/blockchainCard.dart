import 'package:flutter/material.dart';

class BlockChainCard extends StatelessWidget {
  BuildContext contexts;
  BlockChainCard({
    Key? key,
    required this.contexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(contexts).size.width;
    return Card(
      margin: EdgeInsets.all(8),
      child: Container(
        color: Colors.red,
        width: width / 4,
        height: width / 4,
      ),
    );
  }
}
