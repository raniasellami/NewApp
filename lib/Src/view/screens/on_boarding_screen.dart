import 'package:flutter/material.dart';
import 'package:newsapp/src/view/widgets/language_component.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const LanguageComponent(language: "Arabic"),
            const LanguageComponent(language: "French"),
            const LanguageComponent(language: "English"),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/source_screen");
                  },
                  child: const Text("Next"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
