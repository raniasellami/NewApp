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
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: isSelected ? Colors.green : Colors.red,
          child: Column(
            children: [
              Text(
                widget.language,
                style: TextStyle(
                  color: isSelected ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
