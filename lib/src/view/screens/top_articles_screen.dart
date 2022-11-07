import 'package:flutter/material.dart';
import 'package:newsapp/src/model/top_article_api_model.dart';
import 'package:newsapp/src/service/article_service.dart';
import 'package:newsapp/src/view/widgets/new_item_view.dart';
import 'package:newsapp/src/view/widgets/top_article_item_view.dart';

class TopArticlesScreen extends StatelessWidget {
  const TopArticlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<TopArticleApiModel>(
        future: ArticleService().topArticles(),
        builder: (buildcontext, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.articles?.length ?? 0,
                  itemBuilder: (context, index) {
                    return NewItemView(
                      source:
                          snapshot.data!.articles![index].source!.name ?? "",
                      author: snapshot.data!.articles![index].author ?? "",
                      title: snapshot.data!.articles![index].title ?? "",
                      url: snapshot.data!.articles![index].url ?? "",
                      description:
                          snapshot.data!.articles![index].description ?? "",
                      urlToImage:
                          snapshot.data!.articles![index].urlToImage ?? "",
                      publishedAt:
                          snapshot.data!.articles![index].publishedAt ?? "",
                      content: snapshot.data!.articles![index].content ?? "",
                    );
                  },
                )
              : Center(
                  child: SizedBox(
                      height: 16,
                      width: 16,
                      child: const CircularProgressIndicator()),
                );
        },
      ),
    );
  }
}
