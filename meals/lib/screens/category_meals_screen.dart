import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/widgets/meal_item.dart';

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
    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle.toString()),
        ),
        body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: ((context, index) {
              return MealItem(
                  id: categoryMeals[index].id,
                  title: categoryMeals[index].title,
                  imageUrl: categoryMeals[index].imageUrl,
                  duration: categoryMeals[index].duration,
                  complexity: categoryMeals[index].complexity,
                  affordability: categoryMeals[index].affordability);
            })));
  }
}
