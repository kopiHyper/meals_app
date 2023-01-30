import 'package:flutter/material.dart';

import 'Screens/categories_screen.dart';
import 'Screens/category_meals_screen.dart';
import 'Screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: const CategoriesScreen(),
      routes: {
        '/': (ctx) => const CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // return MaterialPageRoute(
        //   builder: (ct) => const CategoriesScreen(),
        // );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const CategoryMealsScreen(),
        );
      },
    );
  }
}
