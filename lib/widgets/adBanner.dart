import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 175,
      color: Colors.black45,
      child: Center(
        child: Text('محل قرارگیری تبلیغات'),
      ),
    );
  }
}
