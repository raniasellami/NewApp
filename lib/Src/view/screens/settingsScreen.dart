import 'package:flutter/material.dart';
import 'package:newsapp/Src/view/screens/language_component.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              width: 16,
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.person), Text('preferances du compte')],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('enable notification '),
                  Switch(
                    // This bool value toggles the switch.
                    value: true,
                    activeColor: Colors.black,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        // light = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('change your language '),
                  Row(
                    children: [
                      Row(children: [
                        LanguageComponent(language: "Arabic"),
                        LanguageComponent(language: "French"),
                        LanguageComponent(language: "English"),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.add_location_alt_outlined),
                  Text('localisation')
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.remove_red_eye_rounded),
                  Text('visibility')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
