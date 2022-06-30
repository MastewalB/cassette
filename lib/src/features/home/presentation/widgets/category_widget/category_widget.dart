import 'package:cassette/src/features/home/presentation/widgets/category_widget/category_item.dart';
import 'package:flutter/material.dart';
import 'package:cassette/src/models/genre.dart';
import 'package:cassette/src/data/data.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .10,
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, index) {
            return CategoryItem(
                category: genres[index], callback: (Genre categorySelected) {});
          },
          separatorBuilder: (_, __) => SizedBox(
                width: 16.0,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: genres.length),
    );
  }
}
