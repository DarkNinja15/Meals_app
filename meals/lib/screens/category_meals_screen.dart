import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/categories-meals';
  // final Categorytitle;
  // final CategoryId;
  // CategoryMealScreen({required this.Categorytitle, required this.CategoryId});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}
