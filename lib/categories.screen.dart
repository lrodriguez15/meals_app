import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  final Widget appTitle = const Text('DeliMeal');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appTitle),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(((e) => CategoryItem(e.title, e.color)))
            .toList(),
      ),
    );
  }
}
