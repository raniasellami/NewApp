import 'package:flutter/material.dart';

class CardOfSource extends StatefulWidget {
  String id;
  String name;
  String description;
  String url;
  String category;
  String language;
  String country;

  CardOfSource({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.category,
    required this.language,
    required this.country,
  });

  @override
  State<CardOfSource> createState() => _CardOfSourceState();
}

class _CardOfSourceState extends State<CardOfSource> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 8,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 8),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Chip(label: Text(widget.language)),
                        Chip(label: Text(widget.category)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    widget.url,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
