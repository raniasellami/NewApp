import 'package:flutter/material.dart';
import 'package:newsapp/Src/model/everthing_api_model.dart';
import 'package:newsapp/Src/model/everthing_api_model.dart';
import 'package:newsapp/Src/model/everthing_api_model.dart';
import 'package:newsapp/Src/model/everthing_api_model.dart';
import 'package:newsapp/Src/service/EverythingService.dart';
import 'package:newsapp/Src/view/screens/ListOfTopArticle.dart';
import 'package:newsapp/Src/view/widgets/everything_item_view.dart';

class newsscreen extends StatefulWidget {
  const newsscreen({Key? key}) : super(key: key);

  @override
  State<newsscreen> createState() => _newsscreenState();
}

class _newsscreenState extends State<newsscreen> {
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
              ListOfTopArticle()
            ],
          )),
    );
  }
}
