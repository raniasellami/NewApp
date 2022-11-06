import 'package:flutter/material.dart';
import 'package:newsapp/src/model/source_api_model.dart';
import 'package:newsapp/src/service/source_service.dart';
import 'package:newsapp/src/view/widgets/source_item_view.dart';

class SourcesScreen extends StatefulWidget {
  const SourcesScreen({Key? key}) : super(key: key);

  @override
  State<SourcesScreen> createState() => _ListOfSourceState();
}

class _ListOfSourceState extends State<SourcesScreen> {
  @override
  Widget build(BuildContext context) {
    var service = NewService();
    return Scaffold(
      appBar: AppBar(
        title: Text('noticee'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed("/Setting");
              },
            ),
          ),
        ],
      ),
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
            return GridView.builder(
              itemCount: snapshot.data!.sources?.length ?? 0,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
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
            return SizedBox(
                height: 16,
                width: 16,
                child: const CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
