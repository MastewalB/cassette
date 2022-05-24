import 'package:cassette/src/features/download/presentation/download_page.dart';
import 'package:flutter/material.dart';
import 'package:cassette/src/common_widgets/common_widgets.dart';

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
                  expandedHeight: 15.0,
                  flexibleSpace: FlexibleSpaceBar(),
                  bottom: TabBar(
                    indicatorColor: Theme.of(context).indicatorColor,
                    indicatorWeight: 04,
                    // indicatorSize: ,
                    tabs: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Downloads",
                          style: TextStyle(fontSize: 18),
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
              // Text("Downloads"),
              Text("History"),
              Text("Subscriptions"),
            ],
          ),
        ),
      ),
    );
  }
}
//
// SliverAppBar(
// backgroundColor: Theme.of(context).scaffoldBackgroundColor,
// title: Text(
// 'Your Library',
// style: Theme.of(context).textTheme.displayLarge,
// ),
// centerTitle: false,
// floating: true,
// actions: [
// CircleButton(
// icon: Icons.search,
// iconSize: 27.0,
// onPressed: () => {},
// )
// ],
// bottom: const TabBar(
// tabs: [
// Tab(text: "Downloads"),
// Tab(text: "History"),
// Tab(text: "Subscriptions"),
// ],
// ),
// ),
