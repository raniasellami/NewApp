import 'package:flutter/material.dart';
import 'package:newsapp/src/utils/date_time_extention.dart';
import 'package:url_launcher/url_launcher.dart';

class NewItemView extends StatelessWidget {
  String source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  NewItemView({
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
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: FadeInImage(
                    image: NetworkImage(urlToImage),
                    placeholder: AssetImage("assets/icon.png"),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Text(
                          "Published by $source",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Spacer(),
                        Text(
                          DateTime.parse(publishedAt).timeAgo(),
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      description,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          launchUrl(Uri.parse(url));
                        },
                        child: Text(
                          "Read more",
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Colors.black,
                              ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Icon(Icons.share)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
