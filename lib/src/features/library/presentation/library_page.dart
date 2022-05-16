import 'package:flutter/material.dart';


class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final TrackingScrollController _trackingScrollController = TrackingScrollController();

  @override
  void dispose(){
    _trackingScrollController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _trackingScrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Your Library',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          centerTitle: false,
          floating: true,
        )
      ],
    );
  }
}
