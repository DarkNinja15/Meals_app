import 'package:flutter/material.dart';
import 'package:meals/category_item.dart';

import '../models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MealTime',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            ...DUMMY_CATEGORIES
                .map((e) => CategoryItem(title: e.title, color: e.color))
                .toList()
          ]),
    );
  }
}
