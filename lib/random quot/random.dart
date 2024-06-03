import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/color.dart';
import 'package:quote_app_daily_task/utils/quote_list.dart';
import 'package:quote_app_daily_task/utils/quotes_model.dart';

QuoteModel? quoteModel;

class QuotesRandom extends StatefulWidget {
  const QuotesRandom({super.key});

  @override
  State<QuotesRandom> createState() => _QuotesRandomState();
}

class _QuotesRandomState extends State<QuotesRandom> {
  @override
  void initState() {
    // TODO: implement initState
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quotes And Author'),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                quoteModel!.quotesModelList.length,
                (index) => Card(
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
              )
            ],
          ),
        ),
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
        ));
  }
}
