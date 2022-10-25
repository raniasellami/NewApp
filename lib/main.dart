import 'package:flutter/material.dart';
import 'package:newsapp/Src/view/screens/list_of_source.dart';
import 'package:newsapp/Src/view/screens/news.screen.dart';
import 'package:newsapp/Src/view/screens/on_boarding.dart';
import 'package:newsapp/Src/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/SplashScreen",
      routes: {
        "/": (BuildContext context) {
          return const SplashScreen();
        },
        "/SplashScreen": (BuildContext context) {
          return const SplashScreen();
        },
        "/news_screen": (BuildContext context) {
          return const newsscreen();
        },
        "/source_screen": (BuildContext context) {
          return const ListOfSource();
        },
        "/OnBoarding": (BuildContext context) {
          return const OnBoarding();
        }
      },
    );
  }
}
