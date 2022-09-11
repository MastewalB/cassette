import 'package:flutter/material.dart';
import 'package:cassette/src/core/common_widgets/common_widgets.dart';
import 'package:cassette/src/data/data.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: episodes.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext, index) {
          return ContainerBody(
            title: episodes[index].title,
            date: episodes[index].date,
            time: episodes[index].time,
            size: episodes[index].size,
            icon: Icons.delete,
          );
        },
      ),
    );
  }
}
