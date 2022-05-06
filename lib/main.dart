import 'package:flutter/material.dart';
import 'package:nft_guide/screens/xd_google_pixel64.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firsttime = (prefs.getBool('firsttime') ?? true);
    String welcome = 'welcome';
    String home = 'home';

    if (firsttime) {
      return welcome;
    } else {
      return home;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: checkFirstSeen(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return MaterialApp(
              initialRoute: snapshot.data.toString(),
              routes: {
                'home': (context) => Home(),
                'welcome': (context) => XDGooglePixel64(),
              },
            );
          }
        });
  }
}
