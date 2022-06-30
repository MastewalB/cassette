import 'package:cassette/src/common_widgets/common_widgets.dart';
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
        leading: Icon(
          Icons.toc_sharp,
          size: 35,
        ),
        title: Text("Podkest"),
        actions: [
          Icon(
            Icons.settings,
            size: 28,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            CategoriesWidget(),
            TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade300),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 47, 49, 66),
                // contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: podcasts.length,
                  // padding: EdgeInsets.symmetric(horizontal: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return PodCard(podcast: podcasts[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
