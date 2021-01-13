import 'package:flutter/material.dart';

import '../models/model.dart';
import '../widgets/model_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritedModels;

  FavoritesScreen(this.favoritedModels);

  @override
  Widget build(BuildContext context) {
    if (favoritedModels.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritedModels.length,
        itemBuilder: (ctx, index) {

          final model = favoritedModels[index];

          return ModelScreen(
            id: model.id,
            title: model.title,
            imageUrl: model.imageUrl,
            complexity: model.complexity,
            affordability: model.affordability,
          );
        },
      );
    }
  }
}
