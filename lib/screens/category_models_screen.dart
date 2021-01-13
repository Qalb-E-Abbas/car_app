import 'package:flutter/material.dart';

import '../models/model.dart';
import '../widgets/model_screen.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Meal> availableModals;

  CategoryMealsScreen(this.availableModals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  String categoryTitle;
  List<Meal> displayedModels;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {

    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, Object>;

      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedModels = widget.availableModals.where((modal) {
        return modal.categories.contains(categoryId);
      }).toList();

      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: displayedModels.length,
        itemBuilder: (ctx, index) {
          final model = displayedModels[index];

          return ModelScreen(
            id: model.id,
            title: model.title,
            imageUrl: model.imageUrl,
            complexity: model.complexity,
            affordability: model.affordability,
          );
        },
      ),
    );
  }
}
