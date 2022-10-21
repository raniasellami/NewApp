import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newsapp/Src/model/source_api.model.dart';
import 'package:newsapp/Src/service/NewService.dart';
import 'package:newsapp/Src/view/widgets/source_item_view.dart';

class ListOfSource extends StatefulWidget {
  const ListOfSource({Key? key}) : super(key: key);

  @override
  State<ListOfSource> createState() => _ListOfSourceState();
}

class _ListOfSourceState extends State<ListOfSource> {
  @override
  Widget build(BuildContext context) {
    var service = NewService();
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
