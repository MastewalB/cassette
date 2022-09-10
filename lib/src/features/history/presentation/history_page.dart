import 'package:flutter/material.dart';
import 'package:cassette/src/core/common_widgets/common_widgets.dart';
import 'package:cassette/src/data/data.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: episodes.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return ContainerBody(
            title: episodes[index].title,
            date: episodes[index].date,
            time: episodes[index].time,
            size: episodes[index].size,
            icon: Icons.download,
          );
        },
      ),
    );
  }
}
