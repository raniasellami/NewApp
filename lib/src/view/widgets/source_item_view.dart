import 'package:flutter/material.dart';

class CardOfSource extends StatefulWidget {
  final String id;
  final String name;
  final String description;
  final String url;
  final String category;
  final String language;
  final String country;

  const CardOfSource({
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
  bool isSourceSelected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: isSourceSelected ? Colors.green : Colors.red,
        ),
      ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black),
            ),
            Row(
              children: [
                Chip(label: Text(widget.language)),
                Chip(label: Text(widget.category)),
                Switch(
                  value: isSourceSelected,
                  onChanged: ((value) => isSourceSelected = !isSourceSelected),
                )
              ],
            ),
            Text(
              widget.url,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
