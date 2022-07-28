import 'package:flutter/material.dart';
import 'package:tapsell_plus/tapsell_plus.dart';

class AdBanner extends StatelessWidget {
  NativeAdData data;
  AdBanner({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        TapsellPlus.instance.nativeBannerAdClicked(data.responseId.toString());

        print(data.responseId);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(
                data.landscapeImageUrl.toString(),
              ),
              fit: BoxFit.fill,
              opacity: 300,
            )),
      ),
    );
  }
}
