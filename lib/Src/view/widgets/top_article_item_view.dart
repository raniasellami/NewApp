import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardOfTopArticle extends StatelessWidget {
  String source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  CardOfTopArticle({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Center(
          child: Column(
            children: [
              Image.network(urlToImage),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      source,
                    ),
                    Text(
                      author,
                    ),
                    Text(
                      description,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(url));
                      },
                      child: Text(
                        url,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                    Text(
                      publishedAt,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
