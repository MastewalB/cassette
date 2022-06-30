import 'package:flutter/material.dart';
import 'package:cassette/src/features/download/downloads.dart';
import 'package:cassette/src/features/history/history.dart';
import 'package:cassette/src/features/subscriptions/subscriptions.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  title: Text(
                    "Your Library",
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  forceElevated: innerBoxIsScrolled,
                  automaticallyImplyLeading: false,
                  expandedHeight: 5.0,
                  flexibleSpace: FlexibleSpaceBar(),
                  bottom: TabBar(
                    indicatorColor: Theme.of(context).indicatorColor,
                    indicatorWeight: 04,
                    tabs: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Downloads",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Subscriptions",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              DownloadPage(),
              HistoryPage(),
              SubscriptionsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
