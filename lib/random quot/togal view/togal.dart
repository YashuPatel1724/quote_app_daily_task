import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/quote_list.dart';
import '../../utils/quotes_model.dart';

bool view = true;
QuoteModel? quoteModel;

class TogalView extends StatefulWidget {
  const TogalView({super.key});

  @override
  State<TogalView> createState() => _TogalViewState();
}

class _TogalViewState extends State<TogalView> {
  @override
  void initState() {
    // TODO: implement initState
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade100,
        title: Text('Toggle view'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            setState(() {
              view = !view;
            });
          }, icon: Icon(view ? Icons.format_list_bulleted_outlined : Icons.grid_view_rounded))
        ],
      ),
      body: view ? buildListView() : builGridView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quotesModelList.length);

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(quoteModel!.quotesModelList[x].author!),
                content: Text(quoteModel!.quotesModelList[x].quote!),
                actions: [
                  TextButton(onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  }, child: Text('Save')),
                  TextButton(onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  }, child: Text('Back'))
                ],
              ),
            );
          },
          backgroundColor: Colors.tealAccent,
          child: Icon(Icons.notification_add),
        )
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: quoteModel!.quotesModelList.length,
      itemBuilder: (context, index) =>
        Card(
          child: ListTile(
            title: Text(
              quoteModel!.quotesModelList[index].quote!,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              quoteModel!.quotesModelList[index].author!,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          color: colorList[index % colorList.length],
        ),
      );
  }
}

GridView builGridView() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: quoteModel!.quotesModelList.length,
    itemBuilder: (context, index) =>
        Card(
          child: ListTile(
            title: Text(
              quoteModel!.quotesModelList[index].quote!,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              quoteModel!.quotesModelList[index].author!,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          color: colorList[index % colorList.length],
        ),
  );

}
