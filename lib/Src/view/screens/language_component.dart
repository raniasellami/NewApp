import 'package:flutter/material.dart';

class LanguageComponent extends StatefulWidget {
  final String language;

  const LanguageComponent({required this.language});

  @override
  State<LanguageComponent> createState() => _LanguageComponentState();
}

class _LanguageComponentState extends State<LanguageComponent> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isSelected,
            onChanged: (state) {
              setState(() {
                isSelected = state ?? false;
              });
            }),
        Text(
          widget.language,
          style: TextStyle(
            color: isSelected ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }
}
