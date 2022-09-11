import 'package:cassette/src/core/common_widgets/common_widgets.dart';
import 'package:cassette/src/core/constants/constants.dart';
import 'package:cassette/src/features/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cassette/src/features/home/presentation/widgets/category_widget/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:cassette/src/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Constants.drawerIcon,
          size: 35,
        ),
        title: Text(AppLocalizations.of(context)!.cassette),
        actions: const [
          Icon(
            Constants.settingsIcon,
            size: 28,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "${AppLocalizations.of(context)!.search}...",
                hintStyle: TextStyle(color: Colors.grey.shade300),
                prefixIcon: Icon(
                  Constants.searchIcon,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 47, 49, 66),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const CategoriesWidget(),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: podcasts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PodcastDetailPage(podcast: podcasts[index])),
                        );
                      },
                      child: PodCard(podcast: podcasts[index]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
