import 'package:flutter/material.dart';
import 'package:newsapp/src/model/everthing_api_model.dart';
import 'package:newsapp/src/service/news_service.dart';
import 'package:newsapp/src/view/screens/top_articles_screen.dart';
import 'package:newsapp/src/view/widgets/everything_item_view.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'News'),
                Tab(text: 'Popular'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FutureBuilder<EverthingApiModel>(
                future: EverythingService().everthingnews(
                  "tesla",
                  "2022-09-25",
                  "publishedAt",
                ),
                builder: (buildcontext, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.articles?.length ?? 0,
                      itemBuilder: (context, index) {
                        return cardofeverythings(
                          source:
                              snapshot.data!.articles![index].source!.name ??
                                  "",
                          author: snapshot.data!.articles![index].author ?? "",
                          title: snapshot.data!.articles![index].title ?? "",
                          url: snapshot.data!.articles![index].url ?? "",
                          description:
                              snapshot.data!.articles![index].description ?? "",
                          urlToImage:
                              snapshot.data!.articles![index].urlToImage ?? "",
                          publishedAt:
                              snapshot.data!.articles![index].publishedAt ?? "",
                          content:
                              snapshot.data!.articles![index].content ?? "",
                        );
                      },
                    );
                  } else {
                    return SizedBox(
                      height: 16,
                      width: 16,
                      //  child: const CircularProgressIndicator());
                    );
                  }
                },
              ),
              TopArticlesScreen()
            ],
          )),
    );
  }
}
