import 'package:flutter/material.dart';

import '../dummy_data.dart';

class ModelDetailScreen extends StatelessWidget {
  static const routeName = '/model-detail';

  final Function toggelFavorite;
  final Function isFavorite;

  ModelDetailScreen(this.toggelFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildListContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {

    final modelId = ModalRoute.of(context).settings.arguments as String;
    final selectedModel = DUMMY_MODALS.firstWhere((meal) => meal.id == modelId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedModel.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedModel.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Specifications'),
            buildListContainer(
              ListView.builder(
                itemCount: selectedModel.Specifications.length,
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(selectedModel.Specifications[index]),
                  ),
                ),
              ),
            ),
            buildSectionTitle(context, 'Details'),
            buildListContainer(
              ListView.builder(
                itemCount: selectedModel.details.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(selectedModel.details[index]),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(modelId) ? Icons.star : Icons.star_border),
        onPressed: () => toggelFavorite(modelId),
      ),
    );
  }
}
