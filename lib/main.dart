import 'package:flutter/material.dart';
import 'package:on_boarding/pages_screen/home_of_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onbording_screen/first_splash.dart';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt("initScreen");
  await preferences.setInt("initScreen", 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initScreen == 0 || initScreen == null ? "onbording" : "/",
      routes: {
        '/': (context) => const HomePages(),
        "onbording": (context) => const FirstSplash(),
      },
    );
  }
}
