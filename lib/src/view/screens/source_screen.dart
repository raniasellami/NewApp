import 'package:flutter/material.dart';
import 'package:newsapp/src/model/source_api_model.dart';
import 'package:newsapp/src/service/source_service.dart';
import 'package:newsapp/src/view/widgets/source_item_view.dart';

class SourcesScreen extends StatelessWidget {
  const SourcesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = NewService();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/news_screen");
        },
        child: Text("Finish"),
      ),
      body: FutureBuilder<SourceApiModel>(
        future: service.fetchSources(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.sources?.length ?? 0,
              itemBuilder: (context, index) {
                return CardOfSource(
                  id: snapshot.data!.sources![index].id!,
                  name: snapshot.data!.sources![index].name!,
                  description: snapshot.data!.sources![index].description!,
                  url: snapshot.data!.sources![index].url!,
                  category: snapshot.data!.sources![index].category!,
                  language: snapshot.data!.sources![index].language!,
                  country: snapshot.data!.sources![index].country!,
                );
              },
            );
          } else {
            return Center(
              child: SizedBox(
                  height: 16,
                  width: 16,
                  child: const CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
