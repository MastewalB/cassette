import 'package:flutter/material.dart';
import 'package:cassette/src/common_widgets/common_widgets.dart';
import 'package:cassette/src/data/data.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
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
