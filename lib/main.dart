import 'package:flutter/material.dart';
import 'package:newsapp/src/view/screens/news_screen.dart';
import 'package:newsapp/src/view/screens/on_boarding_screen.dart';
import 'package:newsapp/src/view/screens/settings_screen.dart';
import 'package:newsapp/src/view/screens/source_screen.dart';
import 'package:newsapp/src/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NewsApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/source_screen",
      routes: {
        "/": (BuildContext context) {
          return const SplashScreen();
        },
        "/SplashScreen": (BuildContext context) {
          return const SplashScreen();
        },
        "/news_screen": (BuildContext context) {
          return const NewsScreen();
        },
        "/source_screen": (BuildContext context) {
          return const SourcesScreen();
        },
        "/OnBoarding": (BuildContext context) {
          return const OnBoardingScreen();
        },
        "/Setting": (BuildContext context) {
          return const SettingScreen();
        }
      },
    );
  }
}
