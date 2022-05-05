import 'package:flutter/material.dart';
import 'package:nft_guide/screens/xd_google_pixel64.dart';
import '../screens/home.dart';

void main() => runApp(
      Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          home: XDGooglePixel64(),
        ),
      ),
    );
