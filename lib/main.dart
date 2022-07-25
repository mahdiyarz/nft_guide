import 'package:flutter/material.dart';
import 'package:nft_guide/screens/onboardingpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:tapsell_plus/tapsell_plus.dart';
import '../screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
  const appId =
      'nomtsmkpbgotkghmestkadrtsagaemenhchohbibpgbbdjiqicpicajmaltnamobjjrjli';

  TapsellPlus.instance.initialize(appId);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = (prefs.getBool('firsttime') ?? true);
    String welcome = 'welcome';
    String home = 'home';

    if (firstTime) {
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
            return const Center();
          } else {
            return MaterialApp(
              initialRoute: snapshot.data.toString(),
              routes: {
                'home': (context) => Home(),
                'welcome': (context) => OnBoardingPage(),
              },
            );
          }
        });
  }
}
