import 'package:flutter/material.dart';

import './dummy_data.dart';
import './models/model.dart';
import './screens/tabs_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_models_screen.dart';
import './screens/model_details_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableModals = DUMMY_MODALS;
  List<Meal> _favoritedMeals = [];


  void _toggleFavorite(String mealId) {
    final existingIndex =
    _favoritedMeals.indexWhere((meal) => meal.id == mealId);

    setState(() {
      if (existingIndex >= 0) {
        _favoritedMeals.removeAt(existingIndex);
      } else {
        _favoritedMeals
            .add(DUMMY_MODALS.firstWhere((meal) => meal.id == mealId));
      }
    });
  }

  bool _isMealFavorite(String mealId) {
    return _favoritedMeals.any((meal) => meal.id == mealId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cars',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoritedMeals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableModals),
        ModelDetailScreen.routeName: (ctx) =>
            ModelDetailScreen(_toggleFavorite, _isMealFavorite),

      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
