import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealTime',
      home: CategoriesScreen(),
    );
  }
}
