import 'package:flutter/material.dart';
import 'package:newsapp/src/view/widgets/language_component.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('choose'),
          Material(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                const LanguageComponent(language: "Arabic"),
                const LanguageComponent(language: "French"),
                const LanguageComponent(language: "English"),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/source_screen");
        },
        child: const Text("Next"),
      ),
    );
  }
}
